
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int loop ;
 int pthread_create (int *,int *,int ,int *) ;

__attribute__((used)) static int run_additional_threads(int nthreads) {
 for (int i = 0; i < nthreads; i++) {
  pthread_t pthread;
  int err;

  err = pthread_create(&pthread, ((void*)0), loop, ((void*)0));
  if (err) {
   return err;
  }
 }

 return 0;
}
