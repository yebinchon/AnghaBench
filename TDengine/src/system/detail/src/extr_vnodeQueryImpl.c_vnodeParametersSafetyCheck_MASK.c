#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_8__ {int numOfCols; TYPE_2__* colList; } ;
struct TYPE_6__ {scalar_t__ colId; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
typedef  TYPE_3__ SQuery ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

bool FUNC2(SQuery *pQuery) {
  // load data column information is incorrect
  for (int32_t i = 0; i < pQuery->numOfCols - 1; ++i) {
    if (pQuery->colList[i].data.colId == pQuery->colList[i + 1].data.colId) {
      FUNC1("QInfo:%p invalid data load column for query", FUNC0(pQuery));
      return false;
    }
  }
  return true;
}