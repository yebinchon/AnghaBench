
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {char* data; struct curl_slist* next; } ;
typedef int CURL ;


 int CURLINFO_SSL_ENGINES ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_getinfo (int *,int ,struct curl_slist**) ;
 int * curl_easy_init () ;
 int curl_slist_free_all (struct curl_slist*) ;
 int printf (char*,char*) ;
 int puts (char*) ;

void tool_list_engines(void)
{
  CURL *curl = curl_easy_init();
  struct curl_slist *engines = ((void*)0);


  curl_easy_getinfo(curl, CURLINFO_SSL_ENGINES, &engines);

  puts("Build-time engines:");
  if(engines) {
    for(; engines; engines = engines->next)
      printf("  %s\n", engines->data);
  }
  else {
    puts("  <none>");
  }


  curl_slist_free_all(engines);
  curl_easy_cleanup(curl);
}
