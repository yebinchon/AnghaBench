
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
 int CURL_LOCK_DATA_CONNECT ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 char* curl_easy_strerror (scalar_t__) ;
 int curl_share_cleanup (char*) ;
 char* curl_share_init () ;
 int curl_share_setopt (char*,int ,int ) ;
 int fprintf (int ,char*,char*) ;
 int my_lock ;
 int my_unlock ;
 int stderr ;

int main(void)
{
  CURLSH *share;
  int i;

  share = curl_share_init();
  curl_share_setopt(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_CONNECT);

  curl_share_setopt(share, CURLSHOPT_LOCKFUNC, my_lock);
  curl_share_setopt(share, CURLSHOPT_UNLOCKFUNC, my_unlock);




  for(i = 0; i < 3; i++) {
    CURL *curl = curl_easy_init();
    if(curl) {
      CURLcode res;

      curl_easy_setopt(curl, CURLOPT_URL, "https://curl.haxx.se/");


      curl_easy_setopt(curl, CURLOPT_SHARE, share);


      res = curl_easy_perform(curl);

      if(res != CURLE_OK)
        fprintf(stderr, "curl_easy_perform() failed: %s\n",
                curl_easy_strerror(res));


      curl_easy_cleanup(curl);
    }
  }

  curl_share_cleanup(share);
  return 0;
}
