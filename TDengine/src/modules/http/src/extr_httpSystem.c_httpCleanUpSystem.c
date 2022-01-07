
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int serverMutex; int * pContextPool; int * timerHandle; int * expireTimer; } ;


 int httpCleanUpConnect (TYPE_1__*) ;
 int httpPrint (char*) ;
 int httpRemoveAllSessions (TYPE_1__*) ;
 TYPE_1__* httpServer ;
 int httpStopSystem () ;
 int pthread_mutex_destroy (int *) ;
 int taosMemPoolCleanUp (int *) ;
 int taosTmrCleanUp (int *) ;
 int taosTmrStopA (int **) ;
 int tfree (TYPE_1__*) ;

void httpCleanUpSystem() {
  httpPrint("http service cleanup");
  httpStopSystem();
}
