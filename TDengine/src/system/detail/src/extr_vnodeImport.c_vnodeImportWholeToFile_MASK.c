#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* payload; int /*<<< orphan*/  rows; int /*<<< orphan*/  importedRows; int /*<<< orphan*/  key; int /*<<< orphan*/  lastKey; int /*<<< orphan*/ * pObj; } ;
typedef  int /*<<< orphan*/  SMeterObj ;
typedef  TYPE_1__ SImportInfo ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char**,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,char*,int) ; 
 int FUNC3 (TYPE_1__*) ; 

int FUNC4(SImportInfo *pImport, char *payload, int rows) {
  int        code = 0;
  SMeterObj *pObj = pImport->pObj;

  code = FUNC0(pImport, 0);
  if (code != 0) return code;

  if (pImport->key != pImport->lastKey) {
    pImport->payload = payload;
    pImport->rows = FUNC1(pObj, payload, rows, &pImport->payload, pImport->key);
    pImport->importedRows = pImport->rows;
    code = FUNC3(pImport);
  } else {
    code = FUNC2(pImport, payload, rows);
  }

  return code;
}