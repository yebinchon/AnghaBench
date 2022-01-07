
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pSessionHash; } ;
typedef TYPE_1__ HttpServer ;


 int httpResetSession ;
 int taosCleanUpStrHashWithFp (int *,int ) ;

void httpRemoveAllSessions(HttpServer *pServer) {
  if (pServer->pSessionHash != ((void*)0)) {
    taosCleanUpStrHashWithFp(pServer->pSessionHash, httpResetSession);
    pServer->pSessionHash = ((void*)0);
  }
}
