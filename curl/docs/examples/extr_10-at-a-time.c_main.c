
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int result; } ;
struct TYPE_5__ {scalar_t__ msg; TYPE_1__ data; int * easy_handle; } ;
typedef TYPE_2__ CURLMsg ;
typedef int CURLM ;
typedef int CURL ;


 int CURLINFO_PRIVATE ;
 int CURLMOPT_MAXCONNECTS ;
 scalar_t__ CURLMSG_DONE ;
 int CURL_GLOBAL_ALL ;
 int EXIT_SUCCESS ;
 unsigned int MAX_PARALLEL ;
 unsigned int NUM_URLS ;
 int add_transfer (int *,unsigned int) ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_getinfo (int *,int ,char**) ;
 char* curl_easy_strerror (int) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int curl_multi_cleanup (int *) ;
 TYPE_2__* curl_multi_info_read (int *,int*) ;
 int * curl_multi_init () ;
 int curl_multi_perform (int *,int*) ;
 int curl_multi_remove_handle (int *,int *) ;
 int curl_multi_setopt (int *,int ,long) ;
 int curl_multi_wait (int *,int *,int ,int,int *) ;
 int fprintf (int ,char*,scalar_t__,...) ;
 int stderr ;

int main(void)
{
  CURLM *cm;
  CURLMsg *msg;
  unsigned int transfers = 0;
  int msgs_left = -1;
  int still_alive = 1;

  curl_global_init(CURL_GLOBAL_ALL);
  cm = curl_multi_init();


  curl_multi_setopt(cm, CURLMOPT_MAXCONNECTS, (long)MAX_PARALLEL);

  for(transfers = 0; transfers < MAX_PARALLEL; transfers++)
    add_transfer(cm, transfers);

  do {
    curl_multi_perform(cm, &still_alive);

    while((msg = curl_multi_info_read(cm, &msgs_left))) {
      if(msg->msg == CURLMSG_DONE) {
        char *url;
        CURL *e = msg->easy_handle;
        curl_easy_getinfo(msg->easy_handle, CURLINFO_PRIVATE, &url);
        fprintf(stderr, "R: %d - %s <%s>\n",
                msg->data.result, curl_easy_strerror(msg->data.result), url);
        curl_multi_remove_handle(cm, e);
        curl_easy_cleanup(e);
      }
      else {
        fprintf(stderr, "E: CURLMsg (%d)\n", msg->msg);
      }
      if(transfers < NUM_URLS)
        add_transfer(cm, transfers++);
    }
    if(still_alive)
      curl_multi_wait(cm, ((void*)0), 0, 1000, ((void*)0));

  } while(still_alive || (transfers < NUM_URLS));

  curl_multi_cleanup(cm);
  curl_global_cleanup();

  return EXIT_SUCCESS;
}
