
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int mutex; TYPE_1__* pConn; } ;
struct TYPE_4__ {scalar_t__ ip; short port; int killConnection; struct TYPE_4__* next; TYPE_2__* pAcct; } ;
typedef TYPE_1__ SConnObj ;
typedef TYPE_2__ SAcctObj ;


 int TSDB_CODE_INVALID_CONNECTION ;
 int atoi (char*) ;
 short htons (int ) ;
 scalar_t__ inet_addr (char*) ;
 int mTrace (char*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;

int mgmtKillConnection(char *qidstr, SConnObj *pConn) {
  SConnObj *pConn1 = ((void*)0);
  char * temp, *chr, idstr[64];
  strcpy(idstr, qidstr);

  temp = idstr;
  chr = strchr(temp, ':');
  if (chr == ((void*)0)) goto _error;
  *chr = 0;
  uint32_t ip = inet_addr(temp);

  temp = chr + 1;
  short port = htons(atoi(temp));

  SAcctObj *pAcct = pConn->pAcct;

  pthread_mutex_lock(&pAcct->mutex);

  pConn = pAcct->pConn;
  while (pConn) {
    if (pConn->ip == ip && pConn->port == port) {

      if (pConn1 == ((void*)0))
        pConn1 = pConn;
      else
        break;
    }

    pConn = pConn->next;
  }

  if (pConn1) pConn1->killConnection = 1;
  if (pConn) pConn->killConnection = 1;

  pthread_mutex_unlock(&pAcct->mutex);

  if (pConn1 == ((void*)0)) goto _error;

  mTrace("connection:%s is there, kill it", qidstr);
  return 0;

_error:
  mTrace("connection:%s is not there", qidstr);

  return TSDB_CODE_INVALID_CONNECTION;
}
