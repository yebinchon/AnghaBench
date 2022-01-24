#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ outputBytes; int /*<<< orphan*/  aOutputBuf; } ;
struct TYPE_7__ {scalar_t__ initialized; } ;
typedef  TYPE_1__ SResultInfo ;
typedef  TYPE_2__ SQLFunctionCtx ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static bool FUNC3(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = FUNC0(pCtx);
  if (pResInfo->initialized) {
    return false;
  }

  FUNC2(pCtx->aOutputBuf, 0, (size_t)pCtx->outputBytes);

  FUNC1(pResInfo);
  return true;
}