
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char curl_slist ;
typedef char curl_httppost ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLFORM_COPYCONTENTS ;
 int CURLFORM_COPYNAME ;
 int CURLFORM_END ;
 int CURLFORM_FILE ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_HTTPPOST ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 char* curl_easy_strerror (int ) ;
 int curl_formadd (char**,char**,int ,char*,int ,char*,int ) ;
 int curl_formfree (char*) ;
 int curl_global_init (int ) ;
 char* curl_slist_append (char*,char const*) ;
 int curl_slist_free_all (char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int strcmp (char*,char*) ;

int main(int argc, char *argv[])
{
  CURL *curl;
  CURLcode res;

  struct curl_httppost *formpost = ((void*)0);
  struct curl_httppost *lastptr = ((void*)0);
  struct curl_slist *headerlist = ((void*)0);
  static const char buf[] = "Expect:";

  curl_global_init(CURL_GLOBAL_ALL);


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


  headerlist = curl_slist_append(headerlist, buf);
  if(curl) {

    curl_easy_setopt(curl, CURLOPT_URL, "https://example.com/examplepost.cgi");
    if((argc == 2) && (!strcmp(argv[1], "noexpectheader")))

      curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headerlist);
    curl_easy_setopt(curl, CURLOPT_HTTPPOST, formpost);


    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_easy_cleanup(curl);


    curl_formfree(formpost);

    curl_slist_free_all(headerlist);
  }
  return 0;
}
