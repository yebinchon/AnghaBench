#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  thandle; TYPE_1__* pUser; scalar_t__ pDb; int /*<<< orphan*/  writeAuth; } ;
struct TYPE_10__ {int numOfColumns; int numOfTags; int sqlLen; int /*<<< orphan*/  meterId; TYPE_2__* schema; } ;
struct TYPE_9__ {int bytes; int colId; } ;
struct TYPE_8__ {int /*<<< orphan*/  user; } ;
typedef  TYPE_2__ SSchema ;
typedef  TYPE_3__ SCreateTableMsg ;
typedef  TYPE_4__ SConnObj ;

/* Variables and functions */
 int TSDB_CODE_DB_NOT_SELECTED ; 
 int TSDB_CODE_NO_RIGHTS ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_CREATE_TABLE_RSP ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(char *pMsg, int msgLen, SConnObj *pConn) {
  SCreateTableMsg *pCreate = (SCreateTableMsg *)pMsg;
  int              code;
  SSchema *        pSchema;

  if (FUNC2(pConn, TSDB_MSG_TYPE_CREATE_TABLE_RSP) != 0) {
    return 0;
  }

  if (!pConn->writeAuth) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    pCreate->numOfColumns = FUNC0(pCreate->numOfColumns);
    pCreate->numOfTags = FUNC0(pCreate->numOfTags);

    pCreate->sqlLen = FUNC0(pCreate->sqlLen);
    pSchema = pCreate->schema;
    for (int i = 0; i < pCreate->numOfColumns + pCreate->numOfTags; ++i) {
      pSchema->bytes = FUNC0(pSchema->bytes);
      pSchema->colId = i;
      pSchema++;
    }

    if (pConn->pDb) {
      code = FUNC3(pConn->pDb, pCreate);
      if (code == 0) {
        FUNC1("meter:%s is created by %s", pCreate->meterId, pConn->pUser->user);
        // mLPrint("meter:%s is created by %s", pCreate->meterId, pConn->pUser->user);
      }
    } else {
      code = TSDB_CODE_DB_NOT_SELECTED;
    }
  }

  FUNC4(pConn->thandle, TSDB_MSG_TYPE_CREATE_TABLE_RSP, code);

  return 0;
}