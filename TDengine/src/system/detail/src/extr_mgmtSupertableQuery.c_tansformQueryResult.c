
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pData; } ;
typedef TYPE_1__ tSkipListNode ;
struct TYPE_5__ {scalar_t__ num; scalar_t__* pRes; } ;
typedef TYPE_2__ tQueryResultset ;
typedef size_t int32_t ;



__attribute__((used)) static void tansformQueryResult(tQueryResultset* pRes) {
  if (pRes == ((void*)0) || pRes->num == 0) {
    return;
  }

  for (int32_t i = 0; i < pRes->num; ++i) {
    pRes->pRes[i] = ((tSkipListNode*)(pRes->pRes[i]))->pData;
  }
}
