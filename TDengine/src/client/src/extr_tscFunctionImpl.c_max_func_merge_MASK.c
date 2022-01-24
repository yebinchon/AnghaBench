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
typedef  scalar_t__ int32_t ;
struct TYPE_5__ {int inputBytes; char* aOutputBuf; } ;
typedef  TYPE_1__ SQLFunctionCtx ;

/* Variables and functions */
 char DATA_SET_FLAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(SQLFunctionCtx *pCtx) {
  int32_t numOfElems = FUNC1(pCtx, pCtx->inputBytes, pCtx->aOutputBuf, 0);

  FUNC0(pCtx, numOfElems, 1);
  if (numOfElems > 0) {
    char *flag = pCtx->aOutputBuf + pCtx->inputBytes;
    *flag = DATA_SET_FLAG;
  }
}