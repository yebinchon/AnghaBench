
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pData; } ;
typedef TYPE_1__ tSkipListNode ;
typedef size_t int32_t ;
struct TYPE_8__ {size_t size; int * val; int * pTabObjs; int qualSize; int * qualMeterObj; int type; int colIndex; } ;
struct TYPE_7__ {int bytes; int member_0; } ;
typedef int STabObj ;
typedef TYPE_2__ SSchema ;
typedef TYPE_3__ SJoinSupporter ;


 size_t doCompare (char*,int ,int ,int ) ;
 int memmove (int ,int ,size_t) ;
 char* mgmtMeterGetTag (int *,int ,TYPE_2__*) ;

__attribute__((used)) static bool mgmtJoinFilterCallback(tSkipListNode* pNode, void* param) {
  SJoinSupporter* pSupporter = (SJoinSupporter*)param;

  SSchema s = {0};
  char* v = mgmtMeterGetTag((STabObj*)pNode->pData, pSupporter->colIndex, &s);

  for (int32_t i = 0; i < pSupporter->size; ++i) {
    int32_t ret = doCompare(v, pSupporter->val[i], pSupporter->type, s.bytes);
    if (ret == 0) {
      pSupporter->qualMeterObj[pSupporter->qualSize++] = pSupporter->pTabObjs[i];







      if (i < pSupporter->size - 1) {
        memmove(pSupporter->val[i], pSupporter->val[i + 1], pSupporter->size - (i + 1));
      }

      pSupporter->size -= 1;

      return 1;
    }
  }

  return 0;
}
