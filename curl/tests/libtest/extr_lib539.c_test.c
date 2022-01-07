
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char curl_slist ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLFTPMETHOD_NOCWD ;
 scalar_t__ CURLFTPMETHOD_SINGLECWD ;
 int CURLOPT_FTP_FILEMETHOD ;
 int CURLOPT_QUOTE ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 char* aprintf (char*,char*) ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 char* curl_slist_append (int *,char*) ;
 int curl_slist_free_all (char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int stderr ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
   CURLcode res;
   CURL *curl;
   char *newURL = ((void*)0);
   struct curl_slist *slist = ((void*)0);

   if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
     fprintf(stderr, "curl_global_init() failed\n");
     return TEST_ERR_MAJOR_BAD;
   }

   curl = curl_easy_init();
   if(!curl) {
     fprintf(stderr, "curl_easy_init() failed\n");
     curl_global_cleanup();
     return TEST_ERR_MAJOR_BAD;
   }




   test_setopt(curl, CURLOPT_URL, URL);
   test_setopt(curl, CURLOPT_VERBOSE, 1L);
   test_setopt(curl, CURLOPT_FTP_FILEMETHOD, (long) CURLFTPMETHOD_SINGLECWD);

   res = curl_easy_perform(curl);
   newURL = aprintf("%s./", URL);
   if(newURL == ((void*)0)) {
     curl_easy_cleanup(curl);
     curl_global_cleanup();
     return TEST_ERR_MAJOR_BAD;
   }

   slist = curl_slist_append(((void*)0), "SYST");
   if(slist == ((void*)0)) {
     free(newURL);
     curl_easy_cleanup(curl);
     curl_global_cleanup();
     return TEST_ERR_MAJOR_BAD;
   }

   test_setopt(curl, CURLOPT_URL, newURL);
   test_setopt(curl, CURLOPT_FTP_FILEMETHOD, (long) CURLFTPMETHOD_NOCWD);
   test_setopt(curl, CURLOPT_QUOTE, slist);

   res = curl_easy_perform(curl);

test_cleanup:

   curl_slist_free_all(slist);
   free(newURL);
   curl_easy_cleanup(curl);
   curl_global_cleanup();

   return (int)res;
}
