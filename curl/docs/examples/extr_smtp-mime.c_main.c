
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char curl_slist ;
typedef int curl_mimepart ;
typedef char curl_mime ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 char* CC ;
 scalar_t__ CURLE_OK ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_MAIL_FROM ;
 int CURLOPT_MAIL_RCPT ;
 int CURLOPT_MIMEPOST ;
 int CURLOPT_URL ;
 int CURL_ZERO_TERMINATED ;
 char* FROM ;
 char* TO ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 char* curl_easy_strerror (scalar_t__) ;
 int * curl_mime_addpart (char*) ;
 int curl_mime_data (int *,int ,int ) ;
 int curl_mime_filedata (int *,char*) ;
 int curl_mime_free (char*) ;
 int curl_mime_headers (int *,char*,int) ;
 char* curl_mime_init (int *) ;
 int curl_mime_subparts (int *,char*) ;
 int curl_mime_type (int *,char*) ;
 char* curl_slist_append (char*,char const*) ;
 int curl_slist_free_all (char*) ;
 int fprintf (int ,char*,char*) ;
 char** headers_text ;
 int inline_html ;
 int inline_text ;
 int stderr ;

int main(void)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  curl = curl_easy_init();
  if(curl) {
    struct curl_slist *headers = ((void*)0);
    struct curl_slist *recipients = ((void*)0);
    struct curl_slist *slist = ((void*)0);
    curl_mime *mime;
    curl_mime *alt;
    curl_mimepart *part;
    const char **cpp;


    curl_easy_setopt(curl, CURLOPT_URL, "smtp://mail.example.com");
    curl_easy_setopt(curl, CURLOPT_MAIL_FROM, FROM);




    recipients = curl_slist_append(recipients, TO);
    recipients = curl_slist_append(recipients, CC);
    curl_easy_setopt(curl, CURLOPT_MAIL_RCPT, recipients);


    for(cpp = headers_text; *cpp; cpp++)
      headers = curl_slist_append(headers, *cpp);
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);


    mime = curl_mime_init(curl);



    alt = curl_mime_init(curl);


    part = curl_mime_addpart(alt);
    curl_mime_data(part, inline_html, CURL_ZERO_TERMINATED);
    curl_mime_type(part, "text/html");


    part = curl_mime_addpart(alt);
    curl_mime_data(part, inline_text, CURL_ZERO_TERMINATED);


    part = curl_mime_addpart(mime);
    curl_mime_subparts(part, alt);
    curl_mime_type(part, "multipart/alternative");
    slist = curl_slist_append(((void*)0), "Content-Disposition: inline");
    curl_mime_headers(part, slist, 1);


    part = curl_mime_addpart(mime);
    curl_mime_filedata(part, "smtp-mime.c");
    curl_easy_setopt(curl, CURLOPT_MIMEPOST, mime);


    res = curl_easy_perform(curl);


    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_slist_free_all(recipients);
    curl_slist_free_all(headers);
    curl_easy_cleanup(curl);


    curl_mime_free(mime);
  }

  return (int)res;
}
