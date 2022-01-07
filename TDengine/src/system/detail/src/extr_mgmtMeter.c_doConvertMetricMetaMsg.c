
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t int32_t ;
typedef size_t int16_t ;
struct TYPE_6__ {size_t orderIndex; size_t orderType; size_t numOfTags; size_t numOfGroupCols; int condLen; int cond; size_t elemLen; int tableCond; int tableCondLen; size_t rel; size_t* tagCols; int groupbyTagColumnList; } ;
struct TYPE_5__ {int* metaElem; } ;
typedef TYPE_1__ SMetricMetaMsg ;
typedef TYPE_2__ SMetricMetaElemMsg ;


 void* htonl (int) ;
 void* htons (size_t) ;

__attribute__((used)) static SMetricMetaElemMsg *doConvertMetricMetaMsg(SMetricMetaMsg *pMetricMetaMsg, int32_t tableIndex) {
  SMetricMetaElemMsg *pElem = (SMetricMetaElemMsg *)((char *)pMetricMetaMsg + pMetricMetaMsg->metaElem[tableIndex]);

  pElem->orderIndex = htons(pElem->orderIndex);
  pElem->orderType = htons(pElem->orderType);
  pElem->numOfTags = htons(pElem->numOfTags);

  pElem->numOfGroupCols = htons(pElem->numOfGroupCols);
  pElem->condLen = htonl(pElem->condLen);
  pElem->cond = htonl(pElem->cond);

  pElem->elemLen = htons(pElem->elemLen);

  pElem->tableCond = htonl(pElem->tableCond);
  pElem->tableCondLen = htonl(pElem->tableCondLen);

  pElem->rel = htons(pElem->rel);

  for (int32_t i = 0; i < pElem->numOfTags; ++i) {
    pElem->tagCols[i] = htons(pElem->tagCols[i]);
  }

  pElem->groupbyTagColumnList = htonl(pElem->groupbyTagColumnList);

  int16_t *groupColIds = (int16_t*) (((char *)pMetricMetaMsg) + pElem->groupbyTagColumnList);
  for (int32_t i = 0; i < pElem->numOfGroupCols; ++i) {
    groupColIds[i] = htons(groupColIds[i]);
  }

  return pElem;
}
