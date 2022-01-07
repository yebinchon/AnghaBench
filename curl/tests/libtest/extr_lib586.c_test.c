
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdata {char* text; scalar_t__ counter; } ;
struct Tdata {char* url; char* share; } ;
typedef scalar_t__ CURLSHcode ;
typedef char CURLSH ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_SHARE ;
 int CURLOPT_URL ;
 scalar_t__ CURLSHE_OK ;
 int CURLSHOPT_LOCKFUNC ;
 int CURLSHOPT_SHARE ;
 int CURLSHOPT_UNLOCKFUNC ;
 int CURLSHOPT_USERDATA ;
 int CURL_GLOBAL_ALL ;
 struct userdata* CURL_LOCK_DATA_SSL_SESSION ;
 int TEST_ERR_MAJOR_BAD ;
 int THREADS ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 scalar_t__ curl_share_cleanup (char*) ;
 char* curl_share_init () ;
 scalar_t__ curl_share_setopt (char*,int ,struct userdata*) ;
 int fire (struct Tdata*) ;
 int fprintf (int ,char*,...) ;
 struct userdata* my_lock ;
 struct userdata* my_unlock ;
 int printf (char*,...) ;
 int stderr ;
 int test_setopt (int *,int ,char*) ;

int test(char *URL)
{
  int res;
  CURLSHcode scode = CURLSHE_OK;
  char *url;
  struct Tdata tdata;
  CURL *curl;
  CURLSH *share;
  int i;
  struct userdata user;

  user.text = "Pigs in space";
  user.counter = 0;

  printf("GLOBAL_INIT\n");
  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }


  printf("SHARE_INIT\n");
  share = curl_share_init();
  if(!share) {
    fprintf(stderr, "curl_share_init() failed\n");
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }

  if(CURLSHE_OK == scode) {
    printf("CURLSHOPT_LOCKFUNC\n");
    scode = curl_share_setopt(share, CURLSHOPT_LOCKFUNC, my_lock);
  }
  if(CURLSHE_OK == scode) {
    printf("CURLSHOPT_UNLOCKFUNC\n");
    scode = curl_share_setopt(share, CURLSHOPT_UNLOCKFUNC, my_unlock);
  }
  if(CURLSHE_OK == scode) {
    printf("CURLSHOPT_USERDATA\n");
    scode = curl_share_setopt(share, CURLSHOPT_USERDATA, &user);
  }
  if(CURLSHE_OK == scode) {
    printf("CURL_LOCK_DATA_SSL_SESSION\n");
    scode = curl_share_setopt(share, CURLSHOPT_SHARE,
                              CURL_LOCK_DATA_SSL_SESSION);
  }

  if(CURLSHE_OK != scode) {
    fprintf(stderr, "curl_share_setopt() failed\n");
    curl_share_cleanup(share);
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }


  res = 0;


  for(i = 1; i <= THREADS; i++) {


    tdata.url = URL;
    tdata.share = share;


    printf("*** run %d\n",i);
    fire(&tdata);
  }



  printf("*** run %d\n", i);
  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    curl_share_cleanup(share);
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }

  url = URL;
  test_setopt(curl, CURLOPT_URL, url);
  printf("CURLOPT_SHARE\n");
  test_setopt(curl, CURLOPT_SHARE, share);

  printf("PERFORM\n");
  curl_easy_perform(curl);


  printf("try SHARE_CLEANUP...\n");
  scode = curl_share_cleanup(share);
  if(scode == CURLSHE_OK) {
    fprintf(stderr, "curl_share_cleanup succeed but error expected\n");
    share = ((void*)0);
  }
  else {
    printf("SHARE_CLEANUP failed, correct\n");
  }

test_cleanup:


  printf("CLEANUP\n");
  curl_easy_cleanup(curl);


  printf("SHARE_CLEANUP\n");
  scode = curl_share_cleanup(share);
  if(scode != CURLSHE_OK)
    fprintf(stderr, "curl_share_cleanup failed, code errno %d\n",
            (int)scode);

  printf("GLOBAL_CLEANUP\n");
  curl_global_cleanup();

  return res;
}
