#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* payload; int /*<<< orphan*/  rows; int /*<<< orphan*/  importedRows; int /*<<< orphan*/  key; int /*<<< orphan*/  firstKey; TYPE_1__* pObj; } ;
struct TYPE_7__ {int /*<<< orphan*/  meterId; int /*<<< orphan*/  sid; int /*<<< orphan*/  vnode; } ;
typedef  TYPE_1__ SMeterObj ;
typedef  TYPE_2__ SImportInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 

int FUNC4(SImportInfo *pImport, char *payload, int rows) {
  int        code = 0;
  SMeterObj *pObj = pImport->pObj;

  code = FUNC1(pImport, 1);
  if (code != 0) return code;

  if (pImport->key != pImport->firstKey) {
    pImport->payload = payload;
    pImport->rows = FUNC2(pObj, payload, rows, pImport->key);
    pImport->importedRows = pImport->rows;
    code = FUNC3(pImport);
  } else {
    FUNC0("vid:%d sid:%d id:%s, data is already imported to file", pObj->vnode, pObj->sid, pObj->meterId);
  }

  return code;
}