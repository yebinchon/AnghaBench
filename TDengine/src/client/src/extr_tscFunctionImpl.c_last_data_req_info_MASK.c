#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_6__ {scalar_t__ numOfRes; } ;
struct TYPE_5__ {scalar_t__ order; } ;
typedef  int /*<<< orphan*/  TSKEY ;
typedef  TYPE_1__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_DATA_ALL_NEEDED ; 
 int /*<<< orphan*/  BLK_DATA_NO_NEEDED ; 
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ TSQL_SO_ASC ; 

__attribute__((used)) static int32_t FUNC1(SQLFunctionCtx *pCtx, TSKEY start, TSKEY end, int32_t colId, int32_t blockStatus) {
  if (pCtx->order == TSQL_SO_ASC) {
    return BLK_DATA_NO_NEEDED;
  }

  if (FUNC0(pCtx)->numOfRes <= 0) {
    return BLK_DATA_ALL_NEEDED;
  } else {
    return BLK_DATA_NO_NEEDED;
  }
}