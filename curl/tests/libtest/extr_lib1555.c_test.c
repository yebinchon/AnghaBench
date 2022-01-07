
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_NOSIGNAL ;
 int CURLOPT_PROGRESSDATA ;
 int CURLOPT_PROGRESSFUNCTION ;
 int CURLOPT_TIMEOUT ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 int curl ;
 int curl_easy_cleanup (int ) ;
 int curl_easy_perform (int ) ;
 int curl_global_cleanup () ;
 int easy_init (int ) ;
 int easy_setopt (int ,int ,...) ;
 int global_init (int ) ;
 long progressCallback ;

int test(char *URL)
{
  int res = 0;

  global_init(CURL_GLOBAL_ALL);

  easy_init(curl);

  easy_setopt(curl, CURLOPT_URL, URL);
  easy_setopt(curl, CURLOPT_TIMEOUT, (long)7);
  easy_setopt(curl, CURLOPT_NOSIGNAL, (long)1);
  easy_setopt(curl, CURLOPT_PROGRESSFUNCTION, progressCallback);
  easy_setopt(curl, CURLOPT_PROGRESSDATA, ((void*)0));
  easy_setopt(curl, CURLOPT_NOPROGRESS, (long)0);

  res = curl_easy_perform(curl);

test_cleanup:



  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
