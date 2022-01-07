
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initurl {char* url; int threadno; int * share; } ;
typedef int pthread_t ;
typedef int CURLSH ;


 int CURLSHOPT_LOCKFUNC ;
 int CURLSHOPT_SHARE ;
 int CURLSHOPT_UNLOCKFUNC ;
 int CURL_GLOBAL_ALL ;
 int CURL_LOCK_DATA_CONNECT ;
 int NUM_THREADS ;
 char* URL ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int curl_share_cleanup (int *) ;
 int * curl_share_init () ;
 int curl_share_setopt (int *,int ,int ) ;
 int fprintf (int ,char*,int,...) ;
 int init_locks () ;
 int kill_locks () ;
 int lock_cb ;
 int pthread_create (int *,int *,int ,struct initurl*) ;
 int pthread_join (int ,int *) ;
 int run_thread ;
 int stderr ;
 int unlock_cb ;

int main(void)
{
  pthread_t tid[NUM_THREADS];
  int i;
  CURLSH *share;
  struct initurl url[NUM_THREADS];


  curl_global_init(CURL_GLOBAL_ALL);

  share = curl_share_init();
  curl_share_setopt(share, CURLSHOPT_LOCKFUNC, lock_cb);
  curl_share_setopt(share, CURLSHOPT_UNLOCKFUNC, unlock_cb);
  curl_share_setopt(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_CONNECT);

  init_locks();

  for(i = 0; i< NUM_THREADS; i++) {
    int error;
    url[i].url = URL;
    url[i].share = share;
    url[i].threadno = i;
    error = pthread_create(&tid[i], ((void*)0), run_thread, &url[i]);
    if(0 != error)
      fprintf(stderr, "Couldn't run thread number %d, errno %d\n", i, error);
    else
      fprintf(stderr, "Thread %d, gets %s\n", i, URL);
  }


  for(i = 0; i< NUM_THREADS; i++) {
    pthread_join(tid[i], ((void*)0));
    fprintf(stderr, "Thread %d terminated\n", i);
  }

  kill_locks();

  curl_share_cleanup(share);
  curl_global_cleanup();
  return 0;
}
