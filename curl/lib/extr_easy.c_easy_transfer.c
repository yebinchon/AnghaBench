
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct Curl_multi {int dummy; } ;
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef int CURLcode ;
typedef TYPE_2__ CURLMsg ;
typedef scalar_t__ CURLMcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLM_OK ;
 scalar_t__ CURLM_OUT_OF_MEMORY ;
 int FALSE ;
 int TRUE ;
 TYPE_2__* curl_multi_info_read (struct Curl_multi*,int*) ;
 scalar_t__ curl_multi_perform (struct Curl_multi*,int*) ;
 scalar_t__ curl_multi_poll (struct Curl_multi*,int *,int ,int,int *) ;

__attribute__((used)) static CURLcode easy_transfer(struct Curl_multi *multi)
{
  bool done = FALSE;
  CURLMcode mcode = CURLM_OK;
  CURLcode result = CURLE_OK;

  while(!done && !mcode) {
    int still_running = 0;

    mcode = curl_multi_poll(multi, ((void*)0), 0, 1000, ((void*)0));

    if(!mcode)
      mcode = curl_multi_perform(multi, &still_running);


    if(!mcode && !still_running) {
      int rc;
      CURLMsg *msg = curl_multi_info_read(multi, &rc);
      if(msg) {
        result = msg->data.result;
        done = TRUE;
      }
    }
  }


  if(mcode) {
    result = (mcode == CURLM_OUT_OF_MEMORY) ? CURLE_OUT_OF_MEMORY :


              CURLE_BAD_FUNCTION_ARGUMENT;
  }

  return result;
}
