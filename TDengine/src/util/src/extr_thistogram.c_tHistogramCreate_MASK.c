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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  pLoserTree; int /*<<< orphan*/  pList; int /*<<< orphan*/  maxEntries; } ;
struct TYPE_7__ {int /*<<< orphan*/  pTree; int /*<<< orphan*/  pSkipList; int /*<<< orphan*/  numOfEntries; } ;
typedef  TYPE_1__ SInsertSupporter ;
typedef  TYPE_2__ SHistogramInfo ;
typedef  int /*<<< orphan*/  SHistBin ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_SKIP_LIST_LEVEL ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_DOUBLE ; 
 int /*<<< orphan*/  compare ; 
 void* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

SHistogramInfo* FUNC4(int32_t numOfEntries) {
  /* need one redundant slot */
  SHistogramInfo* pHisto = FUNC0(sizeof(SHistogramInfo) + sizeof(SHistBin) * (numOfEntries + 1));

#if !defined(USE_ARRAYLIST)
  pHisto->pList = FUNC3(MAX_SKIP_LIST_LEVEL, TSDB_DATA_TYPE_DOUBLE, sizeof(double));
  SInsertSupporter* pss = FUNC0(sizeof(SInsertSupporter));
  pss->numOfEntries = pHisto->maxEntries;
  pss->pSkipList = pHisto->pList;

  int32_t ret = FUNC2(&pHisto->pLoserTree, numOfEntries, pss, compare);
  pss->pTree = pHisto->pLoserTree;
#endif

  return FUNC1(pHisto, numOfEntries);
}