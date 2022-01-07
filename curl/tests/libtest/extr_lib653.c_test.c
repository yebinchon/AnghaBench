
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_mimepart ;
typedef int curl_mime ;
typedef int CURL ;


 int CURLOPT_HEADER ;
 int CURLOPT_MIMEPOST ;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int CURL_ZERO_TERMINATED ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 int * curl_mime_addpart (int *) ;
 int curl_mime_data (int *,char*,int ) ;
 int curl_mime_free (int *) ;
 int * curl_mime_init (int *) ;
 int curl_mime_name (int *,char*) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int global_init (int ) ;

int test(char *URL)
{
  CURL *curls = ((void*)0);
  int res = 0;
  curl_mimepart *field = ((void*)0);
  curl_mime *mime = ((void*)0);

  global_init(CURL_GLOBAL_ALL);
  easy_init(curls);

  mime = curl_mime_init(curls);
  field = curl_mime_addpart(mime);
  curl_mime_name(field, "name");
  curl_mime_data(field, "short value", CURL_ZERO_TERMINATED);

  easy_setopt(curls, CURLOPT_URL, URL);
  easy_setopt(curls, CURLOPT_HEADER, 1L);
  easy_setopt(curls, CURLOPT_VERBOSE, 1L);
  easy_setopt(curls, CURLOPT_MIMEPOST, mime);
  easy_setopt(curls, CURLOPT_NOPROGRESS, 1L);

  res = curl_easy_perform(curls);
  if(res)
    goto test_cleanup;


  curl_mime_data(field, "long value for length change", CURL_ZERO_TERMINATED);
  res = curl_easy_perform(curls);

test_cleanup:
  curl_mime_free(mime);
  curl_easy_cleanup(curls);
  curl_global_cleanup();
  return (int) res;
}
