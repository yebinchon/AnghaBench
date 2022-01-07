
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * timerHandle; int * pContextPool; int cacheContext; } ;
typedef int HttpContext ;


 int httpError (char*) ;
 int httpInitAllSessions (TYPE_1__*) ;
 int httpInitConnect (TYPE_1__*) ;
 int httpInitSystem () ;
 int httpPrint (char*) ;
 TYPE_1__* httpServer ;
 int * taosMemPoolInit (int ,int) ;
 int * taosTmrInit (int,int,int,char*) ;
 int tsHttpCacheSessions ;

int httpStartSystem() {
  httpPrint("starting to initialize http service ...");

  if (httpServer == ((void*)0)) {
    httpError("http server is null");
    httpInitSystem();
  }

  if (httpServer->pContextPool == ((void*)0)) {
    httpServer->pContextPool = taosMemPoolInit(httpServer->cacheContext, sizeof(HttpContext));
  }
  if (httpServer->pContextPool == ((void*)0)) {
    httpError("http init context pool failed");
    return -1;
  }

  if (httpServer->timerHandle == ((void*)0)) {
    httpServer->timerHandle = taosTmrInit(tsHttpCacheSessions * 20 + 100, 1000, 60000, "http");
  }
  if (httpServer->timerHandle == ((void*)0)) {
    httpError("http init timer failed");
    return -1;
  }

  if (!httpInitAllSessions(httpServer)) {
    httpError("http init session failed");
    return -1;
  }

  if (!httpInitConnect(httpServer)) {
    httpError("http init server failed");
    return -1;
  }

  return 0;
}
