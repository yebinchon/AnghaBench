
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ num; int pRes; } ;
typedef TYPE_2__ tQueryResultset ;
struct TYPE_13__ {int numOfOrderedCols; int * pData; } ;
struct TYPE_15__ {struct TYPE_15__* pTagSchema; TYPE_1__ orderIdx; } ;
typedef TYPE_3__ tOrderDescriptor ;
typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_18__ {int meterId; } ;
struct TYPE_17__ {int* metaElem; } ;
struct TYPE_16__ {int numOfColumns; int numOfTags; scalar_t__ schema; } ;
typedef TYPE_4__ STabObj ;
typedef int SSchema ;
typedef TYPE_5__ SMetricMetaMsg ;
typedef TYPE_6__ SMetricMetaElemMsg ;


 int POINTER_BYTES ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_3__*) ;
 TYPE_4__* mgmtGetMeter (int ) ;
 TYPE_3__* tCreateTagSchema (int *,int ) ;
 int tQSortEx (int ,int ,int ,scalar_t__,TYPE_3__*,int ) ;
 int tabObjResultComparator ;

__attribute__((used)) static void orderResult(SMetricMetaMsg* pMetricMetaMsg, tQueryResultset* pRes, int16_t colIndex, int32_t tableIndex) {
  SMetricMetaElemMsg* pElem = (SMetricMetaElemMsg*)((char*)pMetricMetaMsg + pMetricMetaMsg->metaElem[tableIndex]);

  tOrderDescriptor* descriptor =
      (tOrderDescriptor*)calloc(1, sizeof(tOrderDescriptor) + sizeof(int32_t) * 1);

  STabObj* pMetric = mgmtGetMeter(pElem->meterId);
  SSchema* pTagSchema = (SSchema*)(pMetric->schema + pMetric->numOfColumns * sizeof(SSchema));

  descriptor->pTagSchema = tCreateTagSchema(pTagSchema, pMetric->numOfTags);

  descriptor->orderIdx.pData[0] = colIndex;
  descriptor->orderIdx.numOfOrderedCols = 1;


  tQSortEx(pRes->pRes, POINTER_BYTES, 0, pRes->num - 1, descriptor, tabObjResultComparator);

  free(descriptor->pTagSchema);
  free(descriptor);
}
