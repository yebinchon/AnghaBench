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
struct TYPE_4__ {scalar_t__ nType; int nLen; int /*<<< orphan*/  pz; } ;
typedef  TYPE_1__ tVariant ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ TSDB_DATA_TYPE_BINARY ; 
 scalar_t__ TSDB_DATA_TYPE_NCHAR ; 
 int TSDB_NCHAR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(tVariant *pDst, tVariant *pSrc) {
  if (pSrc == NULL || pDst == NULL) return;

  *pDst = *pSrc;

  if (pSrc->nType == TSDB_DATA_TYPE_BINARY || pSrc->nType == TSDB_DATA_TYPE_NCHAR) {
    int32_t len = pSrc->nLen + 1;
    if (pSrc->nType == TSDB_DATA_TYPE_NCHAR) {
      len = len * TSDB_NCHAR_SIZE;
    }

    pDst->pz = FUNC0(1, len);
    FUNC1(pDst->pz, pSrc->pz, len);
  }
}