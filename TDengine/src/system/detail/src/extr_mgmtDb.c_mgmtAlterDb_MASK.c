#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int daysToKeep; int replications; int maxSessions; int /*<<< orphan*/  db; } ;
struct TYPE_10__ {int replications; int daysToKeep; int maxSessions; } ;
struct TYPE_11__ {struct TYPE_11__* next; int /*<<< orphan*/  vgId; TYPE_1__ cfg; struct TYPE_11__* pHead; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ SVgObj ;
typedef  TYPE_2__ SDbObj ;
typedef  TYPE_4__ SAlterDbMsg ;
typedef  int /*<<< orphan*/  SAcctObj ;

/* Variables and functions */
 int /*<<< orphan*/  LB_VGROUP_STATE_UPDATE ; 
 int TSDB_CODE_INVALID_DB ; 
 int TSDB_CODE_INVALID_OPTION ; 
 int TSDB_CODE_NO_ENOUGH_DNODES ; 
 int TSDB_CODE_SDB_ERROR ; 
 int TSDB_CODE_SUCCESS ; 
 int TSDB_MAX_TABLES_PER_VNODE ; 
 int TSDB_MIN_TABLES_PER_VNODE ; 
 int TSDB_REPLICA_MAX_NUM ; 
 int TSDB_REPLICA_MIN_NUM ; 
 int /*<<< orphan*/  dbSdb ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tsDbUpdateSize ; 
 int /*<<< orphan*/  tsVgUpdateSize ; 
 int /*<<< orphan*/  vgSdb ; 

int FUNC9(SAcctObj *pAcct, SAlterDbMsg *pAlter) {
  SDbObj *pDb;
  int     code = TSDB_CODE_SUCCESS;

  pDb = (SDbObj *)FUNC7(dbSdb, pAlter->db);
  if (pDb == NULL) {
    FUNC1("db:%s is not exist", pAlter->db);
    return TSDB_CODE_INVALID_DB;
  }

  int oldReplicaNum = pDb->cfg.replications;
  if (pAlter->daysToKeep > 0) {
    FUNC1("db:%s daysToKeep:%d change to %d", pDb->name, pDb->cfg.daysToKeep, pAlter->daysToKeep);
    pDb->cfg.daysToKeep = pAlter->daysToKeep;
  } else if (pAlter->replications > 0) {
    FUNC1("db:%s replica:%d change to %d", pDb->name, pDb->cfg.replications, pAlter->replications);
    if (pAlter->replications < TSDB_REPLICA_MIN_NUM || pAlter->replications > TSDB_REPLICA_MAX_NUM) {
      FUNC0("invalid db option replica: %d valid range: %d--%d", pAlter->replications, TSDB_REPLICA_MIN_NUM, TSDB_REPLICA_MAX_NUM);
      return TSDB_CODE_INVALID_OPTION;
    }
    pDb->cfg.replications = pAlter->replications;
  } else if (pAlter->maxSessions > 0) {
    FUNC1("db:%s tables:%d change to %d", pDb->name, pDb->cfg.maxSessions, pAlter->maxSessions);
    if (pAlter->maxSessions < TSDB_MIN_TABLES_PER_VNODE || pAlter->maxSessions > TSDB_MAX_TABLES_PER_VNODE) {
      FUNC0("invalid db option tables: %d valid range: %d--%d", pAlter->maxSessions, TSDB_MIN_TABLES_PER_VNODE, TSDB_MAX_TABLES_PER_VNODE);
      return TSDB_CODE_INVALID_OPTION;
    }
    if (pAlter->maxSessions < pDb->cfg.maxSessions) {
      FUNC0("invalid db option tables: %d should larger than original:%d", pAlter->maxSessions, pDb->cfg.maxSessions);
      return TSDB_CODE_INVALID_OPTION;
    }
    return TSDB_CODE_INVALID_OPTION;
    //The modification of tables needs to rewrite the head file, so disable this option
    //pDb->cfg.maxSessions = pAlter->maxSessions;
  } else {
    FUNC0("db:%s alter msg, replica:%d, keep:%d, tables:%d, origin replica:%d keep:%d", pDb->name,
            pAlter->replications, pAlter->maxSessions, pAlter->daysToKeep,
            pDb->cfg.replications, pDb->cfg.daysToKeep);
    return TSDB_CODE_INVALID_OPTION;
  }

  if (FUNC8(dbSdb, pDb, tsDbUpdateSize, 1) < 0) {
    return TSDB_CODE_SDB_ERROR;
  }

  SVgObj *pVgroup = pDb->pHead;
  while (pVgroup != NULL) {
    FUNC6(pVgroup, LB_VGROUP_STATE_UPDATE, 0);
    if (oldReplicaNum < pDb->cfg.replications) {
      if (!FUNC3(pVgroup, NULL, NULL)) {
        FUNC2("db:%s vgroup:%d not enough dnode to add vnode", pAlter->db, pVgroup->vgId);
        code = TSDB_CODE_NO_ENOUGH_DNODES;
      }
    }
    if (pAlter->maxSessions > 0) {
      //rebuild meterList in mgmtVgroup.c
      FUNC8(vgSdb, pVgroup, tsVgUpdateSize, 0);
    }
    FUNC4(pVgroup);
    pVgroup = pVgroup->next;
  }
  FUNC5(10);

  return code;
}