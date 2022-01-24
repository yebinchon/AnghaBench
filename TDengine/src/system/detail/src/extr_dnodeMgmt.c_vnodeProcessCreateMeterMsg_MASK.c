#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int bytes; void* colId; int /*<<< orphan*/  type; } ;
struct TYPE_17__ {char* secret; char* cipheringKey; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  spi; } ;
struct TYPE_16__ {int vnode; scalar_t__ sid; char* meterId; int numOfColumns; int sqlLen; scalar_t__ sversion; char* secret; char* cipheringKey; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  spi; TYPE_2__* schema; void* timeStamp; int /*<<< orphan*/  uid; void* lastCreate; } ;
struct TYPE_15__ {int vnode; scalar_t__ sid; char* meterId; int numOfColumns; scalar_t__ maxBytes; int sqlLen; char* pSql; TYPE_7__* schema; int /*<<< orphan*/  pointsPerFileBlock; int /*<<< orphan*/  bytesPerPoint; void* sversion; void* timeStamp; int /*<<< orphan*/  uid; } ;
struct TYPE_12__ {scalar_t__ maxSessions; int /*<<< orphan*/  rowsInFileBlock; } ;
struct TYPE_14__ {TYPE_1__ cfg; int /*<<< orphan*/ * pCachePool; } ;
struct TYPE_13__ {int bytes; int colId; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  TSKEY ;
typedef  TYPE_3__ SVnodeObj ;
typedef  TYPE_4__ SMeterObj ;
typedef  int /*<<< orphan*/  SMColumn ;
typedef  TYPE_5__ SCreateMsg ;
typedef  TYPE_6__ SConnSec ;
typedef  TYPE_7__ SColumn ;

/* Variables and functions */
 int TSDB_CODE_INVALID_SESSION_ID ; 
 int TSDB_CODE_NOT_ACTIVE_SESSION ; 
 int TSDB_CODE_NO_RESOURCE ; 
 int TSDB_CODE_OTHERS ; 
 int TSDB_CODE_SUCCESS ; 
 int TSDB_KEY_LEN ; 
 scalar_t__ TSDB_MAX_VNODES ; 
 int TSDB_METER_ID_LEN ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__,char*) ; 
 void* FUNC3 (void*) ; 
 void* FUNC4 (scalar_t__) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int FUNC8 (TYPE_4__*,TYPE_6__*) ; 
 TYPE_3__* vnodeList ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(char *pMsg, int msgLen) {
  int         code;
  SMeterObj * pObj = NULL;
  SConnSec    connSec;
  SCreateMsg *pCreate = (SCreateMsg *)pMsg;

  pCreate->vnode = FUNC5(pCreate->vnode);
  pCreate->sid = FUNC4(pCreate->sid);
  pCreate->lastCreate = FUNC3(pCreate->lastCreate);
  pCreate->timeStamp = FUNC3(pCreate->timeStamp);

  if (pCreate->vnode >= TSDB_MAX_VNODES || pCreate->vnode < 0) {
    FUNC1("vid:%d is out of range", pCreate->vnode);
    code = TSDB_CODE_INVALID_SESSION_ID;
    goto _create_over;
  }

  SVnodeObj *pVnode = vnodeList + pCreate->vnode;
  if (pVnode->pCachePool == NULL) {
    FUNC1("vid:%d is not activated yet", pCreate->vnode);
    FUNC9(pCreate->vnode);
    code = TSDB_CODE_NOT_ACTIVE_SESSION;
    goto _create_over;
  }

  if (pCreate->sid >= pVnode->cfg.maxSessions || pCreate->sid < 0) {
    FUNC1("vid:%d sid:%d id:%s, sid is out of range", pCreate->vnode, pCreate->sid, pCreate->meterId);
    code = TSDB_CODE_INVALID_SESSION_ID;
    goto _create_over;
  }

  pCreate->numOfColumns = FUNC5(pCreate->numOfColumns);
  if (pCreate->numOfColumns <= 0) {
    FUNC2("vid:%d sid:%d id:%s, numOfColumns is out of range", pCreate->vnode, pCreate->sid, pCreate->meterId);
    code = TSDB_CODE_OTHERS;
    goto _create_over;
  }

  pCreate->sqlLen = FUNC5(pCreate->sqlLen);
  pObj = (SMeterObj *)FUNC0(1, sizeof(SMeterObj) + pCreate->sqlLen + 1);
  if (pObj == NULL) {
    FUNC1("vid:%d sid:%d id:%s, no memory to allocate meterObj", pCreate->vnode, pCreate->sid, pCreate->meterId);
    code = TSDB_CODE_NO_RESOURCE;
    goto _create_over;
  }

  /*
   * memory alignment may cause holes in SColumn struct which are not assigned any value
   * therefore, we could not use memcmp to compare whether two SColumns are equal or not.
   * So, we need to set the memory to 0 when allocating memory.
   */
  pObj->schema = (SColumn *)FUNC0(1, pCreate->numOfColumns * sizeof(SColumn));

  pObj->vnode = pCreate->vnode;
  pObj->sid = pCreate->sid;
  pObj->uid = pCreate->uid;
  FUNC6(pObj->meterId, pCreate->meterId, TSDB_METER_ID_LEN);
  pObj->numOfColumns = pCreate->numOfColumns;
  pObj->timeStamp = pCreate->timeStamp;
  pObj->sversion = FUNC4(pCreate->sversion);
  pObj->maxBytes = 0;

  for (int i = 0; i < pObj->numOfColumns; ++i) {
    pObj->schema[i].type = pCreate->schema[i].type;
    pObj->schema[i].bytes = FUNC5(pCreate->schema[i].bytes);
    pObj->schema[i].colId = FUNC5(pCreate->schema[i].colId);
    pObj->bytesPerPoint += pObj->schema[i].bytes;
    if (pObj->maxBytes < pObj->schema[i].bytes) pObj->maxBytes = pObj->schema[i].bytes;
  }

  if (pCreate->sqlLen > 0) {
    pObj->sqlLen = pCreate->sqlLen;
    pObj->pSql = ((char *)pObj) + sizeof(SMeterObj);
    FUNC6(pObj->pSql, (char *)pCreate->schema + pCreate->numOfColumns * sizeof(SMColumn), pCreate->sqlLen);
    pObj->pSql[pCreate->sqlLen] = 0;
  }

  pObj->pointsPerFileBlock = pVnode->cfg.rowsInFileBlock;

  if (sizeof(TSKEY) != pObj->schema[0].bytes) {
    FUNC1("key length is not matched, required key length:%d", sizeof(TSKEY));
    code = TSDB_CODE_OTHERS;
    goto _create_over;
  }

  // security info shall be saved here
  connSec.spi = pCreate->spi;
  connSec.encrypt = pCreate->encrypt;
  FUNC6(connSec.secret, pCreate->secret, TSDB_KEY_LEN);
  FUNC6(connSec.cipheringKey, pCreate->cipheringKey, TSDB_KEY_LEN);

  code = FUNC8(pObj, &connSec);

_create_over:
  if (code != TSDB_CODE_SUCCESS) {
    FUNC2("vid:%d sid:%d id:%s, failed to create meterObj", pCreate->vnode, pCreate->sid, pCreate->meterId);
    FUNC7(pObj);
  }

  return code;
}