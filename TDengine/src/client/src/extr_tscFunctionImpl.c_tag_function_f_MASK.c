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
struct TYPE_5__ {TYPE_3__ tag; int /*<<< orphan*/  aOutputBuf; } ;
typedef  TYPE_1__ SQLFunctionCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(SQLFunctionCtx *pCtx, int32_t index) {
  FUNC0(pCtx, 1, 1);
  FUNC1(&pCtx->tag, pCtx->aOutputBuf, pCtx->tag.nType);
}