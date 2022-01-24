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
typedef  scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ numOfExprs; } ;
struct TYPE_9__ {TYPE_1__ exprsInfo; } ;
struct TYPE_8__ {scalar_t__ functionId; } ;
typedef  TYPE_2__ SSqlExpr ;
typedef  TYPE_3__ SSqlCmd ;

/* Variables and functions */
 scalar_t__ TSDB_FUNC_TWA ; 
 TYPE_2__* FUNC0 (TYPE_3__*,scalar_t__) ; 

bool FUNC1(SSqlCmd* pCmd) {
  for (int32_t i = 0; i < pCmd->exprsInfo.numOfExprs; ++i) {
    SSqlExpr* pExpr = FUNC0(pCmd, i);
    if (pExpr == NULL) {
      continue;
    }

    int32_t functionId = pExpr->functionId;
    if (functionId == TSDB_FUNC_TWA) {
      return true;
    }
  }

  return false;
}