#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  meterList; int /*<<< orphan*/  numOfVnodes; int /*<<< orphan*/  vnodeGid; int /*<<< orphan*/  dbName; } ;
typedef  TYPE_1__ SVgObj ;
typedef  int /*<<< orphan*/  SDbObj ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void *FUNC4(void *row, char *str, int size, int *ssize) {
  SVgObj *pVgroup = (SVgObj *)row;
  SDbObj *pDb = FUNC0(pVgroup->dbName);

  if (pDb != NULL) FUNC1(pDb, pVgroup);
  FUNC2(pVgroup->vnodeGid, pVgroup->numOfVnodes);
  FUNC3(pVgroup->meterList);

  return NULL;
}