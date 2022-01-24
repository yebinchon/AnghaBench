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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_6__ {scalar_t__ size; scalar_t__ order; int /*<<< orphan*/  inputType; scalar_t__ hasNull; } ;
typedef  TYPE_1__ SQLFunctionCtx ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 scalar_t__ TSQL_SO_DESC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(SQLFunctionCtx *pCtx, int32_t index) {
  if (pCtx->size == 0) {
    return;
  }

  char *pData = FUNC0(pCtx, index);
  if (pCtx->hasNull && FUNC3(pData, pCtx->inputType)) {
    return;
  }

  if (pCtx->order == TSQL_SO_DESC) {
    return;
  }

  FUNC2(pCtx, pData, index);

  FUNC1(pCtx, 1, 1);
}