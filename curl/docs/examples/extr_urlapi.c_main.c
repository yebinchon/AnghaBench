
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;
typedef int CURLUcode ;
typedef int CURLU ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_CURLU ;
 int CURLOPT_VERBOSE ;
 int CURLUPART_URL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,long) ;
 char* curl_easy_strerror (scalar_t__) ;
 int * curl_url () ;
 int curl_url_cleanup (int *) ;
 int curl_url_set (int *,int ,char*,int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

int main(void)
{
  CURL *curl;
  CURLcode res;

  CURLU *urlp;
  CURLUcode uc;


  curl = curl_easy_init();


  urlp = curl_url();
  uc = curl_url_set(urlp, CURLUPART_URL,
                    "http://example.com/path/index.html", 0);

  if(uc) {
    fprintf(stderr, "curl_url_set() failed: %in", uc);
    goto cleanup;
  }

  if(curl) {

    curl_easy_setopt(curl, CURLOPT_CURLU, urlp);
    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);

    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));

    goto cleanup;
  }

  cleanup:
  curl_url_cleanup(urlp);
  curl_easy_cleanup(curl);
  return 0;
}
