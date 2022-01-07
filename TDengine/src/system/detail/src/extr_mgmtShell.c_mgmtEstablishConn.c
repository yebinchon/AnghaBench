
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int superAuth; int writeAuth; int port; int ip; int thandle; TYPE_2__* pUser; TYPE_1__* pAcct; int stime; } ;
struct TYPE_7__ {int superAuth; int writeAuth; int user; } ;
struct TYPE_6__ {char* user; } ;
typedef TYPE_3__ SConnObj ;


 int atomic_fetch_add_32 (int *,int) ;
 int mgmtAddConnIntoAcct (TYPE_3__*) ;
 int mgmtShellConns ;
 int sdbExtConns ;
 scalar_t__ strcmp (int ,char*) ;
 int taosGetRpcConnInfo (int ,int *,int *,int *,int *,int *) ;
 int taosGetTimestampMs () ;

void mgmtEstablishConn(SConnObj *pConn) {
  atomic_fetch_add_32(&mgmtShellConns, 1);
  atomic_fetch_add_32(&sdbExtConns, 1);
  pConn->stime = taosGetTimestampMs();

  if (strcmp(pConn->pUser->user, "root") == 0 || strcmp(pConn->pUser->user, pConn->pAcct->user) == 0) {
    pConn->superAuth = 1;
    pConn->writeAuth = 1;
  } else {
    pConn->superAuth = pConn->pUser->superAuth;
    pConn->writeAuth = pConn->pUser->writeAuth;
    if (pConn->superAuth) {
      pConn->writeAuth = 1;
    }
  }

  uint32_t temp;
  taosGetRpcConnInfo(pConn->thandle, &temp, &pConn->ip, &pConn->port, &temp, &temp);
  mgmtAddConnIntoAcct(pConn);
}
