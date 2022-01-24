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
struct TYPE_5__ {int size; scalar_t__ order; char* aOutputBuf; int inputBytes; int outputBytes; } ;
typedef  TYPE_1__ SQLFunctionCtx ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ TSQL_SO_ASC ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC4(SQLFunctionCtx *pCtx) {
  FUNC2(pCtx, pCtx->size);

  char *pDest = 0;
  if (pCtx->order == TSQL_SO_ASC) {
    pDest = pCtx->aOutputBuf;
  } else {
    pDest = pCtx->aOutputBuf - (pCtx->size - 1) * pCtx->inputBytes;
  }

  char *pData = FUNC1(pCtx);
  FUNC3(pDest, pData, (size_t)pCtx->size * pCtx->inputBytes);

  pCtx->aOutputBuf += pCtx->size * pCtx->outputBytes * FUNC0(pCtx->order);
}