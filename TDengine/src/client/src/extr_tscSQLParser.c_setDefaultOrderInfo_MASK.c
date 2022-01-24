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
struct TYPE_7__ {void* orderType; } ;
struct TYPE_8__ {int orderColId; void* order; } ;
struct TYPE_9__ {TYPE_1__ groupbyExpr; TYPE_2__ order; } ;
typedef  TYPE_3__ SSqlCmd ;
typedef  int /*<<< orphan*/  SMeterMetaInfo ;

/* Variables and functions */
 int PRIMARYKEY_TIMESTAMP_COL_INDEX ; 
 void* TSQL_SO_ASC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(SSqlCmd* pCmd) {
  /* set default timestamp order information for all queries */
  pCmd->order.order = TSQL_SO_ASC;
  SMeterMetaInfo* pMeterMetaInfo = FUNC2(pCmd, 0);

  if (FUNC1(pCmd)) {
    pCmd->order.order = TSQL_SO_ASC;
    pCmd->order.orderColId = PRIMARYKEY_TIMESTAMP_COL_INDEX;
  } else {
    pCmd->order.orderColId = -1;
  }

  /* for metric query, set default ascending order for group output */
  if (FUNC0(pMeterMetaInfo)) {
    pCmd->groupbyExpr.orderType = TSQL_SO_ASC;
  }
}