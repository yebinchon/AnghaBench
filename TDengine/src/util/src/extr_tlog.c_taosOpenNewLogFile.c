
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;


 int PTHREAD_CREATE_DETACHED ;
 int logMutex ;
 int openInProgress ;
 int pPrint (char*) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ taosLogLines ;
 scalar_t__ taosLogMaxLines ;
 int taosThreadToOpenNewFile ;

int taosOpenNewLogFile() {
  pthread_mutex_lock(&logMutex);

  if (taosLogLines > taosLogMaxLines && openInProgress == 0) {
    openInProgress = 1;

    pPrint("open new log file ......");
    pthread_t thread;
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);

    pthread_create(&thread, &attr, taosThreadToOpenNewFile, ((void*)0));
    pthread_attr_destroy(&attr);
  }

  pthread_mutex_unlock(&logMutex);

  return 0;
}
