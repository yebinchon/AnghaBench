
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int CURL_GLOBAL_ALL ;
 int NUMT ;
 int curl_global_init (int ) ;
 int fprintf (int ,char*,int,...) ;
 int init_locks () ;
 int kill_locks () ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_join (int ,int *) ;
 int pull_one_url ;
 int stderr ;
 char** urls ;

int main(int argc, char **argv)
{
  pthread_t tid[NUMT];
  int i;
  (void)argc;
  (void)argv;


  curl_global_init(CURL_GLOBAL_ALL);

  init_locks();

  for(i = 0; i< NUMT; i++) {
    int error = pthread_create(&tid[i],
                               ((void*)0),
                               pull_one_url,
                               (void *)urls[i]);
    if(0 != error)
      fprintf(stderr, "Couldn't run thread number %d, errno %d\n", i, error);
    else
      fprintf(stderr, "Thread %d, gets %s\n", i, urls[i]);
  }


  for(i = 0; i< NUMT; i++) {
    pthread_join(tid[i], ((void*)0));
    fprintf(stderr, "Thread %d terminated\n", i);
  }

  kill_locks();

  return 0;
}
