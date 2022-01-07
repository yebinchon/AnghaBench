
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_19__ {int useconds; int queryId; int stime; scalar_t__* sql; } ;
struct TYPE_18__ {scalar_t__ numOfQueries; TYPE_9__* qdesc; } ;
struct TYPE_17__ {scalar_t__ interval; int slidingTime; int ctime; scalar_t__ stime; int useconds; int num; int streamId; scalar_t__* sql; } ;
struct TYPE_16__ {scalar_t__ numOfStreams; TYPE_7__* sdesc; } ;
struct TYPE_11__ {int useconds; } ;
struct TYPE_15__ {struct TYPE_15__* next; TYPE_1__ res; int queryId; int stime; int * sqlstr; } ;
struct TYPE_14__ {struct TYPE_14__* next; scalar_t__ interval; int slidingTime; int ctime; scalar_t__ stime; int useconds; int num; int streamId; TYPE_2__* pSql; } ;
struct TYPE_13__ {TYPE_4__* streamList; TYPE_5__* sqlList; } ;
struct TYPE_12__ {int * sqlstr; } ;
typedef TYPE_3__ STscObj ;
typedef TYPE_4__ SSqlStream ;
typedef TYPE_5__ SSqlObj ;
typedef TYPE_6__ SSList ;
typedef TYPE_7__ SSDesc ;
typedef TYPE_8__ SQList ;
typedef TYPE_9__ SQDesc ;


 int TSDB_PAYLOAD_SIZE ;
 int TSDB_SHOW_SQL_LEN ;
 int strncpy (scalar_t__*,int *,int) ;

char *tscBuildQueryStreamDesc(char *pMsg, STscObj *pObj) {
  SQList *pQList = (SQList *)pMsg;
  char * pMax = pMsg + TSDB_PAYLOAD_SIZE - 256;

  SQDesc *pQdesc = pQList->qdesc;
  pQList->numOfQueries = 0;




  pMsg += sizeof(SQList);
  SSqlObj *pSql = pObj->sqlList;
  while (pSql) {




    if (pSql->sqlstr == ((void*)0)) {
      pSql = pSql->next;
      continue;
    }

    strncpy(pQdesc->sql, pSql->sqlstr, TSDB_SHOW_SQL_LEN - 1);
    pQdesc->sql[TSDB_SHOW_SQL_LEN - 1] = 0;
    pQdesc->stime = pSql->stime;
    pQdesc->queryId = pSql->queryId;
    pQdesc->useconds = pSql->res.useconds;

    pQList->numOfQueries++;
    pQdesc++;
    pSql = pSql->next;
    pMsg += sizeof(SQDesc);
    if (pMsg > pMax) break;
  }

  SSList *pSList = (SSList *)pMsg;
  SSDesc *pSdesc = pSList->sdesc;
  pSList->numOfStreams = 0;

  pMsg += sizeof(SSList);
  SSqlStream *pStream = pObj->streamList;
  while (pStream) {
    strncpy(pSdesc->sql, pStream->pSql->sqlstr, TSDB_SHOW_SQL_LEN - 1);
    pSdesc->sql[TSDB_SHOW_SQL_LEN - 1] = 0;
    pSdesc->streamId = pStream->streamId;
    pSdesc->num = pStream->num;

    pSdesc->useconds = pStream->useconds;
    pSdesc->stime = pStream->stime - pStream->interval;
    pSdesc->ctime = pStream->ctime;

    pSdesc->slidingTime = pStream->slidingTime;
    pSdesc->interval = pStream->interval;

    pSList->numOfStreams++;
    pSdesc++;
    pStream = pStream->next;
    pMsg += sizeof(SSDesc);
    if (pMsg > pMax) break;
  }



  return pMsg;
}
