
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExitThread (int) ;
 void* malloc (int) ;
 int pthread_exit (void*) ;

void thrd_exit(int res)
{



  void *pres = malloc(sizeof(int));
  if (pres != ((void*)0))
  {
    *(int*)pres = res;
  }
  pthread_exit(pres);

}
