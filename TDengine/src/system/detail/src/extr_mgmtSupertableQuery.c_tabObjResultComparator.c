
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t numOfOrderedCols; size_t* pData; } ;
struct TYPE_12__ {TYPE_3__* pTagSchema; TYPE_1__ orderIdx; } ;
typedef TYPE_4__ tOrderDescriptor ;
typedef size_t int32_t ;
struct TYPE_14__ {scalar_t__ type; int bytes; int member_0; } ;
struct TYPE_13__ {char* meterId; } ;
struct TYPE_11__ {TYPE_2__* pSchema; } ;
struct TYPE_10__ {scalar_t__ type; } ;
typedef TYPE_5__ STabObj ;
typedef TYPE_6__ SSchema ;


 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 int TSDB_METER_ID_LEN ;
 int assert (int) ;
 size_t doCompare (char*,char*,scalar_t__,int ) ;
 char* mgmtMeterGetTag (TYPE_5__*,size_t,TYPE_6__*) ;

__attribute__((used)) static int32_t tabObjResultComparator(const void* p1, const void* p2, void* param) {
  tOrderDescriptor* pOrderDesc = (tOrderDescriptor*)param;

  STabObj* pNode1 = (STabObj*)p1;
  STabObj* pNode2 = (STabObj*)p2;

  for (int32_t i = 0; i < pOrderDesc->orderIdx.numOfOrderedCols; ++i) {
    int32_t colIdx = pOrderDesc->orderIdx.pData[i];

    char* f1 = ((void*)0);
    char* f2 = ((void*)0);

    SSchema schema = {0};

    if (colIdx == -1) {
      f1 = pNode1->meterId;
      f2 = pNode2->meterId;
      schema.type = TSDB_DATA_TYPE_BINARY;
      schema.bytes = TSDB_METER_ID_LEN;
    } else {
      f1 = mgmtMeterGetTag(pNode1, colIdx, ((void*)0));
      f2 = mgmtMeterGetTag(pNode2, colIdx, &schema);
      assert(schema.type == pOrderDesc->pTagSchema->pSchema[colIdx].type);
    }

    int32_t ret = doCompare(f1, f2, schema.type, schema.bytes);
    if (ret == 0) {
      continue;
    } else {
      return ret;
    }
  }

  return 0;
}
