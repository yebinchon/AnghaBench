
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int numOfConns; } ;
struct TYPE_17__ {int mutex; TYPE_5__* pConn; TYPE_1__ acctInfo; } ;
struct TYPE_16__ {int stime; int port; int ip; int user; } ;
struct TYPE_15__ {struct TYPE_15__* next; int stime; int port; int ip; TYPE_2__* pUser; TYPE_7__* pAcct; } ;
struct TYPE_14__ {scalar_t__ numOfConns; TYPE_6__* connInfo; scalar_t__ index; } ;
struct TYPE_13__ {TYPE_4__* pNode; } ;
struct TYPE_12__ {int user; } ;
typedef TYPE_3__ SShowObj ;
typedef TYPE_4__ SConnShow ;
typedef TYPE_5__ SConnObj ;
typedef TYPE_6__ SConnInfo ;
typedef TYPE_7__ SAcctObj ;


 TYPE_4__* malloc (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strcpy (int ,int ) ;

int mgmtGetConns(SShowObj *pShow, SConnObj *pConn) {
  SAcctObj * pAcct = pConn->pAcct;
  SConnShow *pConnShow;

  pthread_mutex_lock(&pAcct->mutex);

  pConnShow = malloc(sizeof(SConnInfo) * pAcct->acctInfo.numOfConns + sizeof(SConnShow));
  pConnShow->index = 0;
  pConnShow->numOfConns = 0;

  if (pAcct->acctInfo.numOfConns > 0) {
    pConn = pAcct->pConn;
    SConnInfo *pConnInfo = pConnShow->connInfo;

    while (pConn) {
      strcpy(pConnInfo->user, pConn->pUser->user);
      pConnInfo->ip = pConn->ip;
      pConnInfo->port = pConn->port;
      pConnInfo->stime = pConn->stime;

      pConnShow->numOfConns++;
      pConnInfo++;
      pConn = pConn->next;
    }
  }

  pthread_mutex_unlock(&pAcct->mutex);



  pShow->pNode = pConnShow;

  return 0;
}
