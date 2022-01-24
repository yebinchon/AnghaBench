#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  inputType; int /*<<< orphan*/  inputBytes; int /*<<< orphan*/  aOutputBuf; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ SQLFunctionCtx ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(SQLFunctionCtx *pCtx) {
  FUNC1(pCtx, pCtx->size, 1);

  char *pData = FUNC0(pCtx);
  FUNC2(pCtx->aOutputBuf, pData, pCtx->inputBytes, pCtx->inputType);
}