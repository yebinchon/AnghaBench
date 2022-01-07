
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;
typedef char CURLSH ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_SHARE ;
 int CURLOPT_URL ;
 int CURLSHOPT_LOCKFUNC ;
 int CURLSHOPT_SHARE ;
 int CURLSHOPT_UNLOCKFUNC ;
 int CURL_GLOBAL_ALL ;
 int CURL_LOCK_DATA_CONNECT ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 char* curl_easy_strerror (scalar_t__) ;
 int curl_global_cleanup () ;
 int curl_share_cleanup (char*) ;
 char* curl_share_init () ;
 int curl_share_setopt (char*,int ,int ) ;
 int fprintf (int ,char*,...) ;
 int global_init (int ) ;
 int my_lock ;
 int my_unlock ;
 int stderr ;

int test(char *URL)
{
  CURLcode res = CURLE_OK;
  CURLSH *share;
  int i;

  global_init(CURL_GLOBAL_ALL);

  share = curl_share_init();
  if(!share) {
    fprintf(stderr, "curl_share_init() failed\n");
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }

  curl_share_setopt(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_CONNECT);
  curl_share_setopt(share, CURLSHOPT_LOCKFUNC, my_lock);
  curl_share_setopt(share, CURLSHOPT_UNLOCKFUNC, my_unlock);




  for(i = 0; i < 3; i++) {
    CURL *curl = curl_easy_init();
    if(curl) {
      curl_easy_setopt(curl, CURLOPT_URL, URL);


      curl_easy_setopt(curl, CURLOPT_SHARE, share);


      res = curl_easy_perform(curl);

      if(res != CURLE_OK)
        fprintf(stderr, "curl_easy_perform() failed: %s\n",
                curl_easy_strerror(res));


      curl_easy_cleanup(curl);
    }
  }

  curl_share_cleanup(share);
  curl_global_cleanup();

  return 0;
}
