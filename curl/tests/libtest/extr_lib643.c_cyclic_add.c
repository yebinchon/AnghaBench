
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_mimepart ;
typedef int curl_mime ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int * curl_mime_addpart (int *) ;
 int curl_mime_free (int *) ;
 int * curl_mime_init (int *) ;
 scalar_t__ curl_mime_subparts (int *,int *) ;

__attribute__((used)) static int cyclic_add(void)
{
  CURL *easy = curl_easy_init();
  curl_mime *mime = curl_mime_init(easy);
  curl_mimepart *part = curl_mime_addpart(mime);
  CURLcode a1 = curl_mime_subparts(part, mime);

  if(a1 == CURLE_BAD_FUNCTION_ARGUMENT) {
    curl_mime *submime = curl_mime_init(easy);
    curl_mimepart *subpart = curl_mime_addpart(submime);

    curl_mime_subparts(part, submime);
    a1 = curl_mime_subparts(subpart, mime);
  }

  curl_mime_free(mime);
  curl_easy_cleanup(easy);
  if(a1 != CURLE_BAD_FUNCTION_ARGUMENT)

    return 1;

  return 0;
}
