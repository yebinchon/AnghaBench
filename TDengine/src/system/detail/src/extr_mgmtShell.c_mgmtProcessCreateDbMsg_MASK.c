#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  thandle; TYPE_1__* pUser; int /*<<< orphan*/  pAcct; int /*<<< orphan*/  writeAuth; } ;
struct TYPE_8__ {int /*<<< orphan*/  db; void* rowsInFileBlock; int /*<<< orphan*/  blocksPerMeter; void* commitTime; void* daysToKeep2; void* daysToKeep1; void* daysToKeep; void* daysPerFile; void* cacheBlockSize; void* maxSessions; } ;
struct TYPE_7__ {int /*<<< orphan*/  user; } ;
typedef  TYPE_2__ SCreateDbMsg ;
typedef  TYPE_3__ SConnObj ;

/* Variables and functions */
 int TSDB_CODE_GRANT_EXPIRED ; 
 int TSDB_CODE_NO_RIGHTS ; 
 int TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_CREATE_DB_RSP ; 
 scalar_t__ FUNC0 () ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC7(char *pMsg, int msgLen, SConnObj *pConn) {
  SCreateDbMsg *pCreate = (SCreateDbMsg *)pMsg;
  int           code = 0;

  if (FUNC4(pConn, TSDB_MSG_TYPE_CREATE_DB_RSP) != 0) {
    return 0;
  }

  pCreate->maxSessions = FUNC1(pCreate->maxSessions);
  pCreate->cacheBlockSize = FUNC1(pCreate->cacheBlockSize);
  // pCreate->cacheNumOfBlocks = htonl(pCreate->cacheNumOfBlocks);
  pCreate->daysPerFile = FUNC1(pCreate->daysPerFile);
  pCreate->daysToKeep = FUNC1(pCreate->daysToKeep);
  pCreate->daysToKeep1 = FUNC1(pCreate->daysToKeep1);
  pCreate->daysToKeep2 = FUNC1(pCreate->daysToKeep2);
  pCreate->commitTime = FUNC1(pCreate->commitTime);
  pCreate->blocksPerMeter = FUNC2(pCreate->blocksPerMeter);
  pCreate->rowsInFileBlock = FUNC1(pCreate->rowsInFileBlock);

  if (FUNC0()) {
    code = TSDB_CODE_GRANT_EXPIRED;
  } else if (!pConn->writeAuth) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    code = FUNC5(pConn->pAcct, pCreate);
    if (code == TSDB_CODE_SUCCESS) {
      FUNC3("DB:%s is created by %s", pCreate->db, pConn->pUser->user);
    }
  }

  FUNC6(pConn->thandle, TSDB_MSG_TYPE_CREATE_DB_RSP, code);

  return 0;
}