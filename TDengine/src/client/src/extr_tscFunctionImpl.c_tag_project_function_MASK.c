#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ inputBytes; scalar_t__ outputBytes; scalar_t__ aOutputBuf; int /*<<< orphan*/  outputType; int /*<<< orphan*/  tag; int /*<<< orphan*/  order; } ;
typedef  TYPE_1__ SQLFunctionCtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(SQLFunctionCtx *pCtx) {
  FUNC1(pCtx, pCtx->size);

  FUNC2(pCtx->inputBytes == pCtx->outputBytes);
  int32_t factor = FUNC0(pCtx->order);

  for (int32_t i = 0; i < pCtx->size; ++i) {
    FUNC3(&pCtx->tag, pCtx->aOutputBuf, pCtx->outputType);
    pCtx->aOutputBuf += pCtx->outputBytes * factor;
  }
}