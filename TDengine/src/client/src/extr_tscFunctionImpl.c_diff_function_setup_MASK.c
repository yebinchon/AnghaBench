#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* param; } ;
struct TYPE_5__ {int /*<<< orphan*/  nType; } ;
typedef  TYPE_2__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  INITIAL_VALUE_NOT_ASSIGNED ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static bool FUNC1(SQLFunctionCtx *pCtx) {
  if (FUNC0(pCtx)) {
    return false;
  }

  // diff function require the value is set to -1
  pCtx->param[1].nType = INITIAL_VALUE_NOT_ASSIGNED;
  return false;
}