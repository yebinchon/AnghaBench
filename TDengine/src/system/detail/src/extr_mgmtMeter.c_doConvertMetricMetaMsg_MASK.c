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
typedef  size_t int32_t ;
typedef  size_t int16_t ;
struct TYPE_6__ {size_t orderIndex; size_t orderType; size_t numOfTags; size_t numOfGroupCols; int condLen; int cond; size_t elemLen; int tableCond; int tableCondLen; size_t rel; size_t* tagCols; int groupbyTagColumnList; } ;
struct TYPE_5__ {int* metaElem; } ;
typedef  TYPE_1__ SMetricMetaMsg ;
typedef  TYPE_2__ SMetricMetaElemMsg ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (size_t) ; 

__attribute__((used)) static SMetricMetaElemMsg *FUNC2(SMetricMetaMsg *pMetricMetaMsg, int32_t tableIndex) {
  SMetricMetaElemMsg *pElem = (SMetricMetaElemMsg *)((char *)pMetricMetaMsg + pMetricMetaMsg->metaElem[tableIndex]);

  pElem->orderIndex = FUNC1(pElem->orderIndex);
  pElem->orderType = FUNC1(pElem->orderType);
  pElem->numOfTags = FUNC1(pElem->numOfTags);

  pElem->numOfGroupCols = FUNC1(pElem->numOfGroupCols);
  pElem->condLen = FUNC0(pElem->condLen);
  pElem->cond = FUNC0(pElem->cond);

  pElem->elemLen = FUNC1(pElem->elemLen);

  pElem->tableCond = FUNC0(pElem->tableCond);
  pElem->tableCondLen = FUNC0(pElem->tableCondLen);

  pElem->rel = FUNC1(pElem->rel);

  for (int32_t i = 0; i < pElem->numOfTags; ++i) {
    pElem->tagCols[i] = FUNC1(pElem->tagCols[i]);
  }

  pElem->groupbyTagColumnList = FUNC0(pElem->groupbyTagColumnList);

  int16_t *groupColIds = (int16_t*) (((char *)pMetricMetaMsg) + pElem->groupbyTagColumnList);
  for (int32_t i = 0; i < pElem->numOfGroupCols; ++i) {
    groupColIds[i] = FUNC1(groupColIds[i]);
  }

  return pElem;
}