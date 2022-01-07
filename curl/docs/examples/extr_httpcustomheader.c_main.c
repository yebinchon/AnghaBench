
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (int ) ;
 struct curl_slist* curl_slist_append (struct curl_slist*,char*) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

int main(void)
{
  CURL *curl;
  CURLcode res;

  curl = curl_easy_init();
  if(curl) {
    struct curl_slist *chunk = ((void*)0);


    chunk = curl_slist_append(chunk, "Accept:");


    chunk = curl_slist_append(chunk, "Another: yes");


    chunk = curl_slist_append(chunk, "Host: example.com");



    chunk = curl_slist_append(chunk, "X-silly-header;");


    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, chunk);

    curl_easy_setopt(curl, CURLOPT_URL, "localhost");
    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);

    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_easy_cleanup(curl);


    curl_slist_free_all(chunk);
  }
  return 0;
}
