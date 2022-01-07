
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char curl_slist ;
typedef int curl_mimepart ;
typedef char curl_mime ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_MIMEPOST ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 int CURL_ZERO_TERMINATED ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 char* curl_easy_strerror (int ) ;
 int curl_global_init (int ) ;
 int * curl_mime_addpart (char*) ;
 int curl_mime_data (int *,char*,int ) ;
 int curl_mime_filedata (int *,char*) ;
 int curl_mime_free (char*) ;
 char* curl_mime_init (int *) ;
 int curl_mime_name (int *,char*) ;
 char* curl_slist_append (char*,char const*) ;
 int curl_slist_free_all (char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int strcmp (char*,char*) ;

int main(int argc, char *argv[])
{
  CURL *curl;
  CURLcode res;

  curl_mime *form = ((void*)0);
  curl_mimepart *field = ((void*)0);
  struct curl_slist *headerlist = ((void*)0);
  static const char buf[] = "Expect:";

  curl_global_init(CURL_GLOBAL_ALL);

  curl = curl_easy_init();
  if(curl) {

    form = curl_mime_init(curl);


    field = curl_mime_addpart(form);
    curl_mime_name(field, "sendfile");
    curl_mime_filedata(field, "postit2.c");


    field = curl_mime_addpart(form);
    curl_mime_name(field, "filename");
    curl_mime_data(field, "postit2.c", CURL_ZERO_TERMINATED);


    field = curl_mime_addpart(form);
    curl_mime_name(field, "submit");
    curl_mime_data(field, "send", CURL_ZERO_TERMINATED);



    headerlist = curl_slist_append(headerlist, buf);

    curl_easy_setopt(curl, CURLOPT_URL, "https://example.com/examplepost.cgi");
    if((argc == 2) && (!strcmp(argv[1], "noexpectheader")))

      curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headerlist);
    curl_easy_setopt(curl, CURLOPT_MIMEPOST, form);


    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_easy_cleanup(curl);


    curl_mime_free(form);

    curl_slist_free_all(headerlist);
  }
  return 0;
}
