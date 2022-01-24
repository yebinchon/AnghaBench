#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_11__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_14__ {TYPE_1__ fieldsInfo; } ;
struct TYPE_13__ {scalar_t__ functionId; int /*<<< orphan*/  resType; int /*<<< orphan*/  resBytes; } ;
struct TYPE_12__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bytes; } ;
typedef  TYPE_2__ TAOS_FIELD ;
typedef  TYPE_3__ SSqlExpr ;
typedef  TYPE_4__ SSqlCmd ;
typedef  int /*<<< orphan*/  SMeterMetaInfo ;

/* Variables and functions */
 scalar_t__ TSDB_FUNC_FIRST_DST ; 
 scalar_t__ TSDB_FUNC_LAST_DST ; 
 scalar_t__ TSDB_FUNC_MAX ; 
 scalar_t__ TSDB_FUNC_SUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,scalar_t__) ; 

void FUNC4(SSqlCmd* pCmd) {
  SMeterMetaInfo* pMeterMetaInfo = FUNC2(pCmd, 0);
  if (!FUNC0(pMeterMetaInfo)) {
    return;
  }

  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    SSqlExpr*   pExpr = FUNC3(pCmd, i);
    TAOS_FIELD* pField = FUNC1(pCmd, i);

    if ((pExpr->functionId >= TSDB_FUNC_FIRST_DST && pExpr->functionId <= TSDB_FUNC_LAST_DST) ||
        (pExpr->functionId >= TSDB_FUNC_SUM && pExpr->functionId <= TSDB_FUNC_MAX)) {
      pExpr->resBytes = pField->bytes;
      pExpr->resType = pField->type;
    }
  }
}