#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {void* sqlLen; TYPE_2__* schema; void* numOfColumns; void* sversion; int /*<<< orphan*/  timeStamp; int /*<<< orphan*/  meterId; int /*<<< orphan*/  uid; void* sid; void* vnode; } ;
struct TYPE_12__ {int bytes; int colId; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {int /*<<< orphan*/  sid; } ;
struct TYPE_11__ {int numOfColumns; scalar_t__ pSql; int /*<<< orphan*/  sversion; int /*<<< orphan*/  createdTime; int /*<<< orphan*/  meterId; int /*<<< orphan*/  uid; TYPE_1__ gid; } ;
struct TYPE_10__ {void* colId; void* bytes; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ STabObj ;
typedef  TYPE_4__ SSchema ;
typedef  int /*<<< orphan*/  SMColumn ;
typedef  TYPE_5__ SCreateMsg ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_METER_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 

char *FUNC7(STabObj *pMeter, char *pMsg, int vnode) {
  SCreateMsg *pCreateMeter;

  pCreateMeter = (SCreateMsg *)pMsg;
  pCreateMeter->vnode = FUNC2(vnode);
  pCreateMeter->sid = FUNC1(pMeter->gid.sid);
  pCreateMeter->uid = pMeter->uid;
  FUNC3(pCreateMeter->meterId, pMeter->meterId, TSDB_METER_ID_LEN);

  // pCreateMeter->lastCreate = htobe64(pVgroup->lastCreate);
  pCreateMeter->timeStamp = FUNC0(pMeter->createdTime);
  /*
      pCreateMeter->spi = pSec->spi;
      pCreateMeter->encrypt = pSec->encrypt;
      memcpy(pCreateMeter->cipheringKey, pSec->cipheringKey, TSDB_KEY_LEN);
      memcpy(pCreateMeter->secret, pSec->secret, TSDB_KEY_LEN);
  */
  pCreateMeter->sversion = FUNC1(pMeter->sversion);
  pCreateMeter->numOfColumns = FUNC2(pMeter->numOfColumns);
  SSchema *pSchema = FUNC4(pMeter);

  for (int i = 0; i < pMeter->numOfColumns; ++i) {
    pCreateMeter->schema[i].type = pSchema[i].type;
    /* strcpy(pCreateMeter->schema[i].name, pSchema[i].name); */
    pCreateMeter->schema[i].bytes = FUNC2(pSchema[i].bytes);
    pCreateMeter->schema[i].colId = FUNC2(pSchema[i].colId);
  }

  pMsg = ((char *)(pCreateMeter->schema)) + pMeter->numOfColumns * sizeof(SMColumn);
  pCreateMeter->sqlLen = 0;

  if (pMeter->pSql) {
    int len = FUNC6(pMeter->pSql) + 1;
    pCreateMeter->sqlLen = FUNC2(len);
    FUNC5(pMsg, pMeter->pSql);
    pMsg += len;
  }

  return pMsg;
}