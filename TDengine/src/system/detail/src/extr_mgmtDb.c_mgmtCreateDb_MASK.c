#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  user; } ;
struct TYPE_13__ {scalar_t__ daysToKeep1; scalar_t__ daysToKeep2; scalar_t__ daysToKeep; int /*<<< orphan*/  acct; int /*<<< orphan*/  db; } ;
struct TYPE_12__ {TYPE_2__ cfg; int /*<<< orphan*/  createdTime; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ SDbObj ;
typedef  TYPE_2__ SCreateDbMsg ;
typedef  TYPE_3__ SAcctObj ;

/* Variables and functions */
 int TSDB_CODE_DB_ALREADY_EXIST ; 
 int TSDB_CODE_SDB_ERROR ; 
 int TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dbSdb ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 int FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

int FUNC11(SAcctObj *pAcct, SCreateDbMsg *pCreate) {
  SDbObj *pDb;
  int code;

  code = FUNC4(pAcct);
  if (code != 0) {
    return code;
  }

  pDb = (SDbObj *)FUNC6(dbSdb, pCreate->db);
  if (pDb != NULL) {
    return TSDB_CODE_DB_ALREADY_EXIST;
  }

  code = FUNC5(pCreate);
  if (code != TSDB_CODE_SUCCESS) return code;

  FUNC0(pCreate->daysToKeep1 <= pCreate->daysToKeep2 && pCreate->daysToKeep2 <= pCreate->daysToKeep);

  code = FUNC3();
  if (code != 0) {
    return code;
  }

  pDb = FUNC1(sizeof(SDbObj));
  FUNC2(pDb, 0, sizeof(SDbObj));
  FUNC8(pDb->name, pCreate->db);
  FUNC8(pCreate->acct, pAcct->user);
  pDb->createdTime = FUNC9();
  pDb->cfg = *pCreate;

  if (FUNC7(dbSdb, pDb, 0) < 0) {
    code = TSDB_CODE_SDB_ERROR;
    FUNC10(pDb);
  }

  return code;
}