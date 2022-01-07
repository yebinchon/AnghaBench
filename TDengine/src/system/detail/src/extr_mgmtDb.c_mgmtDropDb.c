
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ dropStatus; TYPE_1__* pHead; } ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_1__ SVgObj ;
typedef TYPE_2__ SDbObj ;


 int TSDB_CODE_ACTION_IN_PROGRESS ;
 scalar_t__ TSDB_DB_STATUS_DROPPING ;
 scalar_t__ TSDB_DB_STATUS_DROP_FROM_SDB ;
 int mgmtCheckDropDbFinished (TYPE_2__*) ;
 int mgmtDropDbFromSdb (TYPE_2__*) ;
 int mgmtSendFreeVnodeMsg (TYPE_1__*) ;
 int mgmtSetDbDropping (TYPE_2__*) ;

int mgmtDropDb(SDbObj *pDb) {
  if (pDb->dropStatus == TSDB_DB_STATUS_DROPPING) {
    bool finished = mgmtCheckDropDbFinished(pDb);
    if (!finished) {
      SVgObj *pVgroup = pDb->pHead;
      while (pVgroup != ((void*)0)) {
        mgmtSendFreeVnodeMsg(pVgroup);
        pVgroup = pVgroup->next;
      }
      return TSDB_CODE_ACTION_IN_PROGRESS;
    }


    pDb->dropStatus = TSDB_DB_STATUS_DROP_FROM_SDB;
    mgmtDropDbFromSdb(pDb);
    return 0;
  } else {
    int code = mgmtSetDbDropping(pDb);
    if (code != 0) return code;
    return TSDB_CODE_ACTION_IN_PROGRESS;
  }
}
