
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * expireTimer; int timerHandle; int * pSessionHash; } ;
typedef int HttpSession ;
typedef TYPE_1__ HttpServer ;


 int httpError (char*) ;
 int httpProcessSessionExpire ;
 int taosHashStringStep1 ;
 int * taosInitStrHash (int,int,int ) ;
 int taosTmrReset (int ,int,TYPE_1__*,int ,int **) ;

bool httpInitAllSessions(HttpServer *pServer) {
  if (pServer->pSessionHash == ((void*)0)) {
    pServer->pSessionHash = taosInitStrHash(100, sizeof(HttpSession), taosHashStringStep1);
  }
  if (pServer->pSessionHash == ((void*)0)) {
    httpError("http init session pool failed");
    return 0;
  }
  if (pServer->expireTimer == ((void*)0)) {
    taosTmrReset(httpProcessSessionExpire, 50000, pServer, pServer->timerHandle, &pServer->expireTimer);
  }

  return 1;
}
