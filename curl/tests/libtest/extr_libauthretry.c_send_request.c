
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OUT_OF_MEMORY ;
 int CURLOPT_HEADER ;
 int CURLOPT_HTTPAUTH ;
 int CURLOPT_HTTPGET ;
 int CURLOPT_URL ;
 int CURLOPT_USERPWD ;
 int CURLOPT_VERBOSE ;
 int curl_easy_perform (int *) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int msnprintf (char*,size_t,char*,char const*,int) ;
 int stderr ;
 int strlen (char const*) ;
 int test_setopt (int *,int ,...) ;

__attribute__((used)) static CURLcode send_request(CURL *curl, const char *url, int seq,
                             long auth_scheme, const char *userpwd)
{
  CURLcode res;
  size_t len = strlen(url) + 4 + 1;
  char *full_url = malloc(len);
  if(!full_url) {
    fprintf(stderr, "Not enough memory for full url\n");
    return CURLE_OUT_OF_MEMORY;
  }

  msnprintf(full_url, len, "%s%04d", url, seq);
  fprintf(stderr, "Sending new request %d to %s with credential %s "
          "(auth %ld)\n", seq, full_url, userpwd, auth_scheme);
  test_setopt(curl, CURLOPT_URL, full_url);
  test_setopt(curl, CURLOPT_VERBOSE, 1L);
  test_setopt(curl, CURLOPT_HEADER, 1L);
  test_setopt(curl, CURLOPT_HTTPGET, 1L);
  test_setopt(curl, CURLOPT_USERPWD, userpwd);
  test_setopt(curl, CURLOPT_HTTPAUTH, auth_scheme);

  res = curl_easy_perform(curl);

test_cleanup:
  free(full_url);
  return res;
}
