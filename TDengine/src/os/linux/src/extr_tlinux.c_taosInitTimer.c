
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;


 int PTHREAD_CREATE_DETACHED ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,void (*) (int)) ;
 int taosProcessAlarmSignal ;
 int tmrError (char*) ;

int taosInitTimer(void (*callback)(int), int ms) {
  pthread_t thread;
  pthread_attr_t tattr;
  pthread_attr_init(&tattr);
  pthread_attr_setdetachstate(&tattr, PTHREAD_CREATE_DETACHED);
  if (pthread_create(&thread, &tattr, taosProcessAlarmSignal, callback) != 0) {
    tmrError("failed to create timer thread");
    return -1;
  }

  pthread_attr_destroy(&tattr);
  return 0;
}
