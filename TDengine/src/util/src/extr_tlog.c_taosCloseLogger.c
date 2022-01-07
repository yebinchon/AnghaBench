
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asyncThread; int buffNotEmpty; } ;


 TYPE_1__* logHandle ;
 int pthread_join (int ,int *) ;
 scalar_t__ taosCheckPthreadValid (int ) ;
 int taosStopLog () ;
 int tsem_post (int *) ;

void taosCloseLogger() {
  taosStopLog();
  tsem_post(&(logHandle->buffNotEmpty));
  if (taosCheckPthreadValid(logHandle->asyncThread)) {
    pthread_join(logHandle->asyncThread, ((void*)0));
  }




}
