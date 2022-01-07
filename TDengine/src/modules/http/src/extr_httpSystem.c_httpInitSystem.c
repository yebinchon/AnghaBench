
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int serverMutex; int processData; int numOfThreads; int sessionExpire; int cacheContext; int serverPort; int serverIp; int label; } ;
typedef TYPE_1__ HttpServer ;


 int adminInitHandle (TYPE_1__*) ;
 int gcInitHandle (TYPE_1__*) ;
 int httpProcessData ;
 TYPE_1__* httpServer ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int opInitHandle (TYPE_1__*) ;
 int pthread_mutex_init (int *,int *) ;
 int restInitHandle (TYPE_1__*) ;
 int strcpy (int ,char*) ;
 int taosInitNote (int,int) ;
 int taos_init () ;
 int tgInitHandle (TYPE_1__*) ;
 int tsHttpCacheSessions ;
 scalar_t__ tsHttpEnableRecordSql ;
 char* tsHttpIp ;
 int tsHttpMaxThreads ;
 int tsHttpPort ;
 int tsHttpSessionExpire ;
 int tsNumOfLogLines ;

int httpInitSystem() {
  taos_init();

  httpServer = (HttpServer *)malloc(sizeof(HttpServer));
  memset(httpServer, 0, sizeof(HttpServer));

  strcpy(httpServer->label, "rest");
  strcpy(httpServer->serverIp, tsHttpIp);
  httpServer->serverPort = tsHttpPort;
  httpServer->cacheContext = tsHttpCacheSessions;
  httpServer->sessionExpire = tsHttpSessionExpire;
  httpServer->numOfThreads = tsHttpMaxThreads;
  httpServer->processData = httpProcessData;

  pthread_mutex_init(&httpServer->serverMutex, ((void*)0));

  if (tsHttpEnableRecordSql != 0) {
    taosInitNote(tsNumOfLogLines / 10, 1);
  }
  restInitHandle(httpServer);
  adminInitHandle(httpServer);
  gcInitHandle(httpServer);
  tgInitHandle(httpServer);
  opInitHandle(httpServer);

  return 0;
}
