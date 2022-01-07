
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initurl {long url; long share; int threadno; } ;
typedef int CURL ;


 int CURLOPT_SHARE ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEFUNCTION ;
 int URL_ITERATIONS ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,long) ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;
 long write_db ;

__attribute__((used)) static void *run_thread(void *ptr)
{
  struct initurl *u = (struct initurl *)ptr;
  int i;

  for(i = 0; i < URL_ITERATIONS; i++) {
    CURL *curl = curl_easy_init();
    curl_easy_setopt(curl, CURLOPT_URL, u->url);
    curl_easy_setopt(curl, CURLOPT_VERBOSE, 0L);
    curl_easy_setopt(curl, CURLOPT_SHARE, u->share);
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_db);
    curl_easy_perform(curl);
    curl_easy_cleanup(curl);
    fprintf(stderr, "Thread %d transfer %d\n", u->threadno, i);
  }

  return ((void*)0);
}
