
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int user; } ;
struct TYPE_13__ {scalar_t__ daysToKeep1; scalar_t__ daysToKeep2; scalar_t__ daysToKeep; int acct; int db; } ;
struct TYPE_12__ {TYPE_2__ cfg; int createdTime; int name; } ;
typedef TYPE_1__ SDbObj ;
typedef TYPE_2__ SCreateDbMsg ;
typedef TYPE_3__ SAcctObj ;


 int TSDB_CODE_DB_ALREADY_EXIST ;
 int TSDB_CODE_SDB_ERROR ;
 int TSDB_CODE_SUCCESS ;
 int assert (int) ;
 int dbSdb ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int mgmtCheckDbGrant () ;
 int mgmtCheckDbLimit (TYPE_3__*) ;
 int mgmtCheckDbParams (TYPE_2__*) ;
 scalar_t__ sdbGetRow (int ,int ) ;
 scalar_t__ sdbInsertRow (int ,TYPE_1__*,int ) ;
 int strcpy (int ,int ) ;
 int taosGetTimestampMs () ;
 int tfree (TYPE_1__*) ;

int mgmtCreateDb(SAcctObj *pAcct, SCreateDbMsg *pCreate) {
  SDbObj *pDb;
  int code;

  code = mgmtCheckDbLimit(pAcct);
  if (code != 0) {
    return code;
  }

  pDb = (SDbObj *)sdbGetRow(dbSdb, pCreate->db);
  if (pDb != ((void*)0)) {
    return TSDB_CODE_DB_ALREADY_EXIST;
  }

  code = mgmtCheckDbParams(pCreate);
  if (code != TSDB_CODE_SUCCESS) return code;

  assert(pCreate->daysToKeep1 <= pCreate->daysToKeep2 && pCreate->daysToKeep2 <= pCreate->daysToKeep);

  code = mgmtCheckDbGrant();
  if (code != 0) {
    return code;
  }

  pDb = malloc(sizeof(SDbObj));
  memset(pDb, 0, sizeof(SDbObj));
  strcpy(pDb->name, pCreate->db);
  strcpy(pCreate->acct, pAcct->user);
  pDb->createdTime = taosGetTimestampMs();
  pDb->cfg = *pCreate;

  if (sdbInsertRow(dbSdb, pDb, 0) < 0) {
    code = TSDB_CODE_SDB_ERROR;
    tfree(pDb);
  }

  return code;
}
