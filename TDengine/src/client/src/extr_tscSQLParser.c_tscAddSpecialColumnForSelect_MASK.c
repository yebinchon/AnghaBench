#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_16__ {int /*<<< orphan*/  tableIndex; int /*<<< orphan*/  columnIndex; } ;
struct TYPE_15__ {scalar_t__ num; } ;
struct TYPE_14__ {int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  bytes; } ;
struct TYPE_12__ {int /*<<< orphan*/  flag; } ;
struct TYPE_13__ {TYPE_1__ colInfo; } ;
typedef  TYPE_2__ SSqlExpr ;
typedef  int /*<<< orphan*/  SSqlCmd ;
typedef  TYPE_3__ SSchema ;
typedef  TYPE_4__ SColumnList ;
typedef  TYPE_5__ SColumnIndex ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(SSqlCmd* pCmd, int32_t outputColIndex, int16_t functionId, SColumnIndex* pIndex,
                                  SSchema* pColSchema, int16_t flag) {
  SSqlExpr* pExpr = FUNC4(pCmd, outputColIndex, functionId, pIndex, pColSchema->type, pColSchema->bytes,
                                     pColSchema->bytes);

  SColumnList ids = FUNC2(1, pIndex->tableIndex, pIndex->columnIndex);
  if (FUNC0(flag)) {
    ids.num = 0;
  }

  FUNC3(pCmd, outputColIndex, &ids, pColSchema->bytes, pColSchema->type, pColSchema->name);

  pExpr->colInfo.flag = flag;
  if (FUNC0(flag)) {
    FUNC1(pCmd, pIndex->columnIndex, pIndex->tableIndex);
  }
}