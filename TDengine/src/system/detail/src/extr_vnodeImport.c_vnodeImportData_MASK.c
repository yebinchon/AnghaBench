#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ commitInProcess; } ;
struct TYPE_14__ {scalar_t__ lastKey; scalar_t__ commit; int /*<<< orphan*/  rows; int /*<<< orphan*/  payload; } ;
struct TYPE_13__ {scalar_t__ lastKeyOnFile; size_t vnode; } ;
struct TYPE_12__ {scalar_t__ pCachePool; } ;
typedef  TYPE_1__ SVnodeObj ;
typedef  TYPE_2__ SMeterObj ;
typedef  TYPE_3__ SImportInfo ;
typedef  TYPE_4__ SCachePool ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* vnodeList ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC4(SMeterObj *pObj, SImportInfo *pImport) {
  int code = 0;

  if (pImport->lastKey > pObj->lastKeyOnFile) {
    code = FUNC1(pImport, pImport->payload, pImport->rows);
  } else if (pImport->lastKey < pObj->lastKeyOnFile) {
    code = FUNC2(pImport, pImport->payload, pImport->rows);
  } else {  // lastKey == pObj->lastkeyOnFile
    code = FUNC0(pImport, pImport->payload, pImport->rows);
  }

  SVnodeObj  *pVnode = &vnodeList[pObj->vnode];
  SCachePool *pPool = (SCachePool *)pVnode->pCachePool;
  pPool->commitInProcess = 0;

  if (pImport->commit) FUNC3(pVnode, NULL);

  return code;
}