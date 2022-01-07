
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; long tv_usec; int member_1; int member_0; } ;
typedef char curl_slist ;
typedef char curl_httppost ;
typedef int fd_set ;
typedef scalar_t__ CURLMcode ;
typedef int CURLM ;
typedef int CURL ;


 int CURLFORM_COPYCONTENTS ;
 int CURLFORM_COPYNAME ;
 int CURLFORM_END ;
 int CURLFORM_FILE ;
 scalar_t__ CURLM_OK ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_HTTPPOST ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int FD_ZERO (int *) ;
 int Sleep (int) ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,...) ;
 int curl_formadd (char**,char**,int ,char*,int ,char*,int ) ;
 int curl_formfree (char*) ;
 int curl_multi_add_handle (int *,int *) ;
 int curl_multi_cleanup (int *) ;
 scalar_t__ curl_multi_fdset (int *,int *,int *,int *,int*) ;
 int * curl_multi_init () ;
 int curl_multi_perform (int *,int*) ;
 int curl_multi_timeout (int *,long*) ;
 char* curl_slist_append (char*,char const*) ;
 int curl_slist_free_all (char*) ;
 int fprintf (int ,char*,scalar_t__) ;
 int printf (char*,...) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int stderr ;

int main(void)
{
  CURL *curl;

  CURLM *multi_handle;
  int still_running = 0;

  struct curl_httppost *formpost = ((void*)0);
  struct curl_httppost *lastptr = ((void*)0);
  struct curl_slist *headerlist = ((void*)0);
  static const char buf[] = "Expect:";



  curl_formadd(&formpost,
               &lastptr,
               CURLFORM_COPYNAME, "sendfile",
               CURLFORM_FILE, "postit2.c",
               CURLFORM_END);


  curl_formadd(&formpost,
               &lastptr,
               CURLFORM_COPYNAME, "filename",
               CURLFORM_COPYCONTENTS, "postit2.c",
               CURLFORM_END);


  curl_formadd(&formpost,
               &lastptr,
               CURLFORM_COPYNAME, "submit",
               CURLFORM_COPYCONTENTS, "send",
               CURLFORM_END);

  curl = curl_easy_init();
  multi_handle = curl_multi_init();



  headerlist = curl_slist_append(headerlist, buf);
  if(curl && multi_handle) {


    curl_easy_setopt(curl, CURLOPT_URL, "https://www.example.com/upload.cgi");
    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);

    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headerlist);
    curl_easy_setopt(curl, CURLOPT_HTTPPOST, formpost);

    curl_multi_add_handle(multi_handle, curl);

    curl_multi_perform(multi_handle, &still_running);

    while(still_running) {
      struct timeval timeout;
      int rc;
      CURLMcode mc;

      fd_set fdread;
      fd_set fdwrite;
      fd_set fdexcep;
      int maxfd = -1;

      long curl_timeo = -1;

      FD_ZERO(&fdread);
      FD_ZERO(&fdwrite);
      FD_ZERO(&fdexcep);


      timeout.tv_sec = 1;
      timeout.tv_usec = 0;

      curl_multi_timeout(multi_handle, &curl_timeo);
      if(curl_timeo >= 0) {
        timeout.tv_sec = curl_timeo / 1000;
        if(timeout.tv_sec > 1)
          timeout.tv_sec = 1;
        else
          timeout.tv_usec = (curl_timeo % 1000) * 1000;
      }


      mc = curl_multi_fdset(multi_handle, &fdread, &fdwrite, &fdexcep, &maxfd);

      if(mc != CURLM_OK) {
        fprintf(stderr, "curl_multi_fdset() failed, code %d.\n", mc);
        break;
      }







      if(maxfd == -1) {





        struct timeval wait = { 0, 100 * 1000 };
        rc = select(0, ((void*)0), ((void*)0), ((void*)0), &wait);

      }
      else {


        rc = select(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);
      }

      switch(rc) {
      case -1:

        break;
      case 0:
      default:

        printf("perform!\n");
        curl_multi_perform(multi_handle, &still_running);
        printf("running: %d!\n", still_running);
        break;
      }
    }

    curl_multi_cleanup(multi_handle);


    curl_easy_cleanup(curl);


    curl_formfree(formpost);


    curl_slist_free_all(headerlist);
  }
  return 0;
}
