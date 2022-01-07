
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msg; int * easy_handle; } ;
typedef char FILE ;
typedef TYPE_1__ CURLMsg ;
typedef int CURL ;


 int CURLINFO_EFFECTIVE_URL ;
 int CURLINFO_PRIVATE ;

 int curl_easy_cleanup (int *) ;
 int curl_easy_getinfo (int *,int ,char**) ;
 int curl_handle ;
 TYPE_1__* curl_multi_info_read (int ,int*) ;
 int curl_multi_remove_handle (int ,int *) ;
 int fclose (char*) ;
 int fprintf (int ,char*) ;
 int printf (char*,char*) ;
 int stderr ;

__attribute__((used)) static void check_multi_info(void)
{
  char *done_url;
  CURLMsg *message;
  int pending;
  CURL *easy_handle;
  FILE *file;

  while((message = curl_multi_info_read(curl_handle, &pending))) {
    switch(message->msg) {
    case 128:





      easy_handle = message->easy_handle;

      curl_easy_getinfo(easy_handle, CURLINFO_EFFECTIVE_URL, &done_url);
      curl_easy_getinfo(easy_handle, CURLINFO_PRIVATE, &file);
      printf("%s DONE\n", done_url);

      curl_multi_remove_handle(curl_handle, easy_handle);
      curl_easy_cleanup(easy_handle);
      if(file) {
        fclose(file);
      }
      break;

    default:
      fprintf(stderr, "CURLMSG default\n");
      break;
    }
  }
}
