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
struct TYPE_6__ {int /*<<< orphan*/  nType; } ;
struct TYPE_5__ {int aOutputBuf; int outputBytes; int /*<<< orphan*/  order; TYPE_3__ tag; } ;
typedef  TYPE_1__ SQLFunctionCtx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(SQLFunctionCtx *pCtx, int32_t index) {
  FUNC1(pCtx, 1);
  FUNC2(&pCtx->tag, pCtx->aOutputBuf, pCtx->tag.nType);
  pCtx->aOutputBuf += pCtx->outputBytes * FUNC0(pCtx->order);
}