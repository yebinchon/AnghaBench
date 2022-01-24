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
typedef  int /*<<< orphan*/  simpleCheck ;
typedef  int /*<<< orphan*/  head ;
struct TYPE_9__ {int sid; char action; int sversion; int contLen; int simpleCheck; } ;
struct TYPE_8__ {int vnode; int sid; int sversion; } ;
struct TYPE_7__ {char* pWrite; int mappingSize; char* pMem; int mappingThreshold; int /*<<< orphan*/  logMutex; } ;
typedef  TYPE_1__ SVnodeObj ;
typedef  TYPE_2__ SMeterObj ;
typedef  TYPE_3__ SCommitHead ;

/* Variables and functions */
 int TSDB_CODE_ACTION_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* vnodeList ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC5(SMeterObj *pObj, char action, char *cont, int contLen, int sverion) {
  SVnodeObj *pVnode = vnodeList + pObj->vnode;
  if (pVnode->pWrite == NULL) return 0;

  SCommitHead head;
  head.sid = pObj->sid;
  head.action = action;
  head.sversion = pObj->sversion;
  head.contLen = contLen;
  head.simpleCheck = (head.sversion+head.sid+head.contLen+head.action) & 0xFFFFFF;
  int simpleCheck = head.simpleCheck;

  FUNC2(&(pVnode->logMutex));
  // 100 bytes redundant mem space
  if (pVnode->mappingSize - (pVnode->pWrite - pVnode->pMem) < contLen + sizeof(SCommitHead) + sizeof(simpleCheck) + 100) {
    FUNC3(&(pVnode->logMutex));
    FUNC0("vid:%d, mem mapping space is not enough, wait for commit", pObj->vnode);
    FUNC4(pVnode, NULL);
    return TSDB_CODE_ACTION_IN_PROGRESS;
  }
  char *pWrite = pVnode->pWrite;
  pVnode->pWrite += sizeof(head) + contLen + sizeof(simpleCheck);
  FUNC1(pWrite, (char *)&head, sizeof(head));
  FUNC1(pWrite + sizeof(head), cont, contLen);
  FUNC1(pWrite + sizeof(head) + contLen, &simpleCheck, sizeof(simpleCheck));
  FUNC3(&(pVnode->logMutex));

  if (pVnode->pWrite - pVnode->pMem > pVnode->mappingThreshold) {
    FUNC0("vid:%d, mem mapping is close to limit, commit", pObj->vnode);
    FUNC4(pVnode, NULL);
  }

  FUNC0("vid:%d sid:%d, data is written to commit log", pObj->vnode, pObj->sid);

  return 0;
}