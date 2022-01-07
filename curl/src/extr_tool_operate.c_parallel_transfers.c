
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct per_transfer {int dummy; } ;
struct GlobalConfig {int dummy; } ;
struct TYPE_4__ {scalar_t__ result; } ;
struct TYPE_5__ {TYPE_1__ data; int * easy_handle; } ;
typedef scalar_t__ CURLcode ;
typedef int CURLSH ;
typedef TYPE_2__ CURLMsg ;
typedef scalar_t__ CURLMcode ;
typedef int CURLM ;
typedef int CURL ;


 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int CURLINFO_PRIVATE ;
 scalar_t__ CURLM_OK ;
 scalar_t__ CURLM_OUT_OF_MEMORY ;
 int FALSE ;
 int TRUE ;
 scalar_t__ add_parallel_transfers (struct GlobalConfig*,int *,int *,int*,int*) ;
 int all_added ;
 int curl_easy_getinfo (int *,int ,void*) ;
 int curl_multi_cleanup (int *) ;
 TYPE_2__* curl_multi_info_read (int *,int*) ;
 int * curl_multi_init () ;
 scalar_t__ curl_multi_perform (int *,int*) ;
 scalar_t__ curl_multi_poll (int *,int *,int ,int,int *) ;
 int curl_multi_remove_handle (int *,int *) ;
 int del_per_transfer (struct per_transfer*) ;
 scalar_t__ post_per_transfer (struct GlobalConfig*,struct per_transfer*,scalar_t__,int*) ;
 int progress_finalize (struct per_transfer*) ;
 int progress_meter (struct GlobalConfig*,struct timeval*,int) ;
 struct timeval tvnow () ;

__attribute__((used)) static CURLcode parallel_transfers(struct GlobalConfig *global,
                                   CURLSH *share)
{
  CURLM *multi;
  CURLMcode mcode = CURLM_OK;
  CURLcode result = CURLE_OK;
  int still_running = 1;
  struct timeval start = tvnow();
  bool more_transfers;
  bool added_transfers;

  multi = curl_multi_init();
  if(!multi)
    return CURLE_OUT_OF_MEMORY;

  result = add_parallel_transfers(global, multi, share,
                                  &more_transfers, &added_transfers);
  if(result)
    return result;

  while(!mcode && (still_running || more_transfers)) {
    mcode = curl_multi_poll(multi, ((void*)0), 0, 1000, ((void*)0));
    if(!mcode)
      mcode = curl_multi_perform(multi, &still_running);

    progress_meter(global, &start, FALSE);

    if(!mcode) {
      int rc;
      CURLMsg *msg;
      bool removed = FALSE;
      do {
        msg = curl_multi_info_read(multi, &rc);
        if(msg) {
          bool retry;
          struct per_transfer *ended;
          CURL *easy = msg->easy_handle;
          result = msg->data.result;
          curl_easy_getinfo(easy, CURLINFO_PRIVATE, (void *)&ended);
          curl_multi_remove_handle(multi, easy);

          result = post_per_transfer(global, ended, result, &retry);
          if(retry)
            continue;
          progress_finalize(ended);
          all_added--;
          removed = TRUE;
          (void)del_per_transfer(ended);
        }
      } while(msg);
      if(removed) {

        (void)add_parallel_transfers(global, multi, share,
                                     &more_transfers,
                                     &added_transfers);
        if(added_transfers)

          still_running = 1;
      }
    }
  }

  (void)progress_meter(global, &start, TRUE);


  if(mcode) {
    result = (mcode == CURLM_OUT_OF_MEMORY) ? CURLE_OUT_OF_MEMORY :


      CURLE_BAD_FUNCTION_ARGUMENT;
  }

  curl_multi_cleanup(multi);

  return result;
}
