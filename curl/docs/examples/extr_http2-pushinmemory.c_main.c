
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct CURLMsg {scalar_t__ msg; int * easy_handle; } ;
struct TYPE_2__ {int memory; } ;
typedef scalar_t__ CURLMcode ;
typedef int CURLM ;
typedef int CURL ;


 int CURLMOPT_PIPELINING ;
 int CURLMOPT_PUSHDATA ;
 int CURLMOPT_PUSHFUNCTION ;
 scalar_t__ CURLMSG_DONE ;
 int* CURLPIPE_MULTIPLEX ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_multi_add_handle (int *,int *) ;
 int curl_multi_cleanup (int *) ;
 struct CURLMsg* curl_multi_info_read (int *,int*) ;
 int * curl_multi_init () ;
 scalar_t__ curl_multi_perform (int *,int*) ;
 int curl_multi_remove_handle (int *,int *) ;
 int curl_multi_setopt (int *,int ,int*) ;
 scalar_t__ curl_multi_wait (int *,int *,int ,int,int*) ;
 TYPE_1__* files ;
 int free (int ) ;
 int pushindex ;
 int* server_push_callback ;
 int setup (int *) ;

int main(void)
{
  CURL *easy;
  CURLM *multi;
  int still_running;
  int transfers = 1;
  int i;
  struct CURLMsg *m;


  multi = curl_multi_init();

  easy = curl_easy_init();


  setup(easy);


  curl_multi_add_handle(multi, easy);

  curl_multi_setopt(multi, CURLMOPT_PIPELINING, CURLPIPE_MULTIPLEX);
  curl_multi_setopt(multi, CURLMOPT_PUSHFUNCTION, server_push_callback);
  curl_multi_setopt(multi, CURLMOPT_PUSHDATA, &transfers);

  while(transfers) {
    int rc;
    CURLMcode mcode = curl_multi_perform(multi, &still_running);
    if(mcode)
      break;

    mcode = curl_multi_wait(multi, ((void*)0), 0, 1000, &rc);
    if(mcode)
      break;






    do {
      int msgq = 0;;
      m = curl_multi_info_read(multi, &msgq);
      if(m && (m->msg == CURLMSG_DONE)) {
        CURL *e = m->easy_handle;
        transfers--;
        curl_multi_remove_handle(multi, e);
        curl_easy_cleanup(e);
      }
    } while(m);

  }


  curl_multi_cleanup(multi);


  for(i = 0; i < pushindex; i++) {

    free(files[i].memory);
  }

  return 0;
}
