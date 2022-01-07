
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int daysToKeep; int replications; int maxSessions; int db; } ;
struct TYPE_10__ {int replications; int daysToKeep; int maxSessions; } ;
struct TYPE_11__ {struct TYPE_11__* next; int vgId; TYPE_1__ cfg; struct TYPE_11__* pHead; int name; } ;
typedef TYPE_2__ SVgObj ;
typedef TYPE_2__ SDbObj ;
typedef TYPE_4__ SAlterDbMsg ;
typedef int SAcctObj ;


 int LB_VGROUP_STATE_UPDATE ;
 int TSDB_CODE_INVALID_DB ;
 int TSDB_CODE_INVALID_OPTION ;
 int TSDB_CODE_NO_ENOUGH_DNODES ;
 int TSDB_CODE_SDB_ERROR ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_MAX_TABLES_PER_VNODE ;
 int TSDB_MIN_TABLES_PER_VNODE ;
 int TSDB_REPLICA_MAX_NUM ;
 int TSDB_REPLICA_MIN_NUM ;
 int dbSdb ;
 int mError (char*,int,int,...) ;
 int mTrace (char*,int ,...) ;
 int mWarn (char*,int ,int ) ;
 int mgmtAddVnode (TYPE_2__*,int *,int *) ;
 int mgmtSendVPeersMsg (TYPE_2__*) ;
 int mgmtStartBalanceTimer (int) ;
 int mgmtUpdateVgroupState (TYPE_2__*,int ,int ) ;
 scalar_t__ sdbGetRow (int ,int ) ;
 scalar_t__ sdbUpdateRow (int ,TYPE_2__*,int ,int) ;
 int tsDbUpdateSize ;
 int tsVgUpdateSize ;
 int vgSdb ;

int mgmtAlterDb(SAcctObj *pAcct, SAlterDbMsg *pAlter) {
  SDbObj *pDb;
  int code = TSDB_CODE_SUCCESS;

  pDb = (SDbObj *)sdbGetRow(dbSdb, pAlter->db);
  if (pDb == ((void*)0)) {
    mTrace("db:%s is not exist", pAlter->db);
    return TSDB_CODE_INVALID_DB;
  }

  int oldReplicaNum = pDb->cfg.replications;
  if (pAlter->daysToKeep > 0) {
    mTrace("db:%s daysToKeep:%d change to %d", pDb->name, pDb->cfg.daysToKeep, pAlter->daysToKeep);
    pDb->cfg.daysToKeep = pAlter->daysToKeep;
  } else if (pAlter->replications > 0) {
    mTrace("db:%s replica:%d change to %d", pDb->name, pDb->cfg.replications, pAlter->replications);
    if (pAlter->replications < TSDB_REPLICA_MIN_NUM || pAlter->replications > TSDB_REPLICA_MAX_NUM) {
      mError("invalid db option replica: %d valid range: %d--%d", pAlter->replications, TSDB_REPLICA_MIN_NUM, TSDB_REPLICA_MAX_NUM);
      return TSDB_CODE_INVALID_OPTION;
    }
    pDb->cfg.replications = pAlter->replications;
  } else if (pAlter->maxSessions > 0) {
    mTrace("db:%s tables:%d change to %d", pDb->name, pDb->cfg.maxSessions, pAlter->maxSessions);
    if (pAlter->maxSessions < TSDB_MIN_TABLES_PER_VNODE || pAlter->maxSessions > TSDB_MAX_TABLES_PER_VNODE) {
      mError("invalid db option tables: %d valid range: %d--%d", pAlter->maxSessions, TSDB_MIN_TABLES_PER_VNODE, TSDB_MAX_TABLES_PER_VNODE);
      return TSDB_CODE_INVALID_OPTION;
    }
    if (pAlter->maxSessions < pDb->cfg.maxSessions) {
      mError("invalid db option tables: %d should larger than original:%d", pAlter->maxSessions, pDb->cfg.maxSessions);
      return TSDB_CODE_INVALID_OPTION;
    }
    return TSDB_CODE_INVALID_OPTION;


  } else {
    mError("db:%s alter msg, replica:%d, keep:%d, tables:%d, origin replica:%d keep:%d", pDb->name,
            pAlter->replications, pAlter->maxSessions, pAlter->daysToKeep,
            pDb->cfg.replications, pDb->cfg.daysToKeep);
    return TSDB_CODE_INVALID_OPTION;
  }

  if (sdbUpdateRow(dbSdb, pDb, tsDbUpdateSize, 1) < 0) {
    return TSDB_CODE_SDB_ERROR;
  }

  SVgObj *pVgroup = pDb->pHead;
  while (pVgroup != ((void*)0)) {
    mgmtUpdateVgroupState(pVgroup, LB_VGROUP_STATE_UPDATE, 0);
    if (oldReplicaNum < pDb->cfg.replications) {
      if (!mgmtAddVnode(pVgroup, ((void*)0), ((void*)0))) {
        mWarn("db:%s vgroup:%d not enough dnode to add vnode", pAlter->db, pVgroup->vgId);
        code = TSDB_CODE_NO_ENOUGH_DNODES;
      }
    }
    if (pAlter->maxSessions > 0) {

      sdbUpdateRow(vgSdb, pVgroup, tsVgUpdateSize, 0);
    }
    mgmtSendVPeersMsg(pVgroup);
    pVgroup = pVgroup->next;
  }
  mgmtStartBalanceTimer(10);

  return code;
}
