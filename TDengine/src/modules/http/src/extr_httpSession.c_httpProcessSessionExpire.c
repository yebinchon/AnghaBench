
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int expireTimer; int timerHandle; } ;
typedef TYPE_1__ HttpServer ;


 int httpRemoveExpireSessions (TYPE_1__*) ;
 int taosTmrReset (void (*) (void*,void*),int,TYPE_1__*,int ,int *) ;

void httpProcessSessionExpire(void *handle, void *tmrId) {
  HttpServer *pServer = (HttpServer *)handle;
  httpRemoveExpireSessions(pServer);
  taosTmrReset(httpProcessSessionExpire, 60000, pServer, pServer->timerHandle, &pServer->expireTimer);
}
