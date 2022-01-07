
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t num; int ** pRes; } ;
typedef TYPE_1__ tQueryResultset ;
typedef size_t int32_t ;
struct TYPE_6__ {int bytes; int type; int member_0; } ;
typedef int STabObj ;
typedef TYPE_2__ SSchema ;


 size_t TSDB_CODE_DUPLICATE_TAGS ;
 size_t TSDB_CODE_SUCCESS ;
 scalar_t__ doCompare (char*,char*,int ,int ) ;
 char* mgmtMeterGetTag (int *,size_t,TYPE_2__*) ;

__attribute__((used)) static int32_t mgmtCheckForDuplicateTagValue(tQueryResultset* pRes, int32_t index, int32_t tagCol) {
  SSchema s = {0};

  for (int32_t k = 1; k < pRes[index].num; ++k) {
    STabObj* pObj1 = pRes[index].pRes[k - 1];
    STabObj* pObj2 = pRes[index].pRes[k];

    char* val1 = mgmtMeterGetTag(pObj1, tagCol, &s);
    char* val2 = mgmtMeterGetTag(pObj2, tagCol, ((void*)0));

    if (doCompare(val1, val2, s.type, s.bytes) == 0) {
      return TSDB_CODE_DUPLICATE_TAGS;
    }
  }

  return TSDB_CODE_SUCCESS;
}
