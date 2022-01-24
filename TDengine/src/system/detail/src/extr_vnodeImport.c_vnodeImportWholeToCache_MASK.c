#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ key; scalar_t__ lastKey; int importedRows; scalar_t__ firstKey; TYPE_1__* pObj; } ;
struct TYPE_9__ {scalar_t__ lastKeyOnFile; int /*<<< orphan*/  meterId; int /*<<< orphan*/  sid; int /*<<< orphan*/  vnode; } ;
typedef  TYPE_1__ SMeterObj ;
typedef  TYPE_2__ SImportInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,char*,int,char**,scalar_t__) ; 
 int FUNC3 (TYPE_2__*,char*,int) ; 
 int FUNC4 (TYPE_2__*,char*,int) ; 
 int FUNC5 (TYPE_2__*,char*,int) ; 

int FUNC6(SImportInfo *pImport, char *payload, int rows) {
  int        code = 0;
  SMeterObj *pObj = pImport->pObj;

  code = FUNC1(pImport, 0);
  if (code != 0) return code;

  if (pImport->key != pImport->lastKey) {
    char *pStart;
    if ( pImport->key < pObj->lastKeyOnFile ) pImport->key = pObj->lastKeyOnFile;
    rows = FUNC2(pObj, payload, rows, &pStart, pImport->key);
    pImport->importedRows = rows;
    code = FUNC5(pImport, pStart, rows);
  } else {
    if (pImport->firstKey > pObj->lastKeyOnFile) {
      code = FUNC3(pImport, payload, rows);
    } else if (pImport->firstKey < pObj->lastKeyOnFile) {
      code = FUNC4(pImport, payload, rows);
    } else {  // firstKey == pObj->lastKeyOnFile
      FUNC0("vid:%d sid:%d id:%s, data is already there", pObj->vnode, pObj->sid, pObj->meterId);
    }
  }

  return code;
}