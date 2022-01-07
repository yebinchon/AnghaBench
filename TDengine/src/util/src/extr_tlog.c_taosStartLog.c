
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_attr_t ;
struct TYPE_3__ {int asyncThread; } ;


 TYPE_1__* logHandle ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 scalar_t__ pthread_create (int *,int *,int ,TYPE_1__*) ;
 int taosAsyncOutputLog ;

int taosStartLog() {
  pthread_attr_t threadAttr;

  pthread_attr_init(&threadAttr);

  if (pthread_create(&(logHandle->asyncThread), &threadAttr, taosAsyncOutputLog, logHandle) != 0) {
    return -1;
  }

  pthread_attr_destroy(&threadAttr);

  return 0;
}
