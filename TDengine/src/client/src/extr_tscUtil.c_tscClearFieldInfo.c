
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pVisibleCols; int pFields; int pOffset; } ;
typedef TYPE_1__ SFieldInfo ;


 int memset (TYPE_1__*,int ,int) ;
 int tfree (int ) ;

void tscClearFieldInfo(SFieldInfo* pFieldInfo) {
  if (pFieldInfo == ((void*)0)) {
    return;
  }

  tfree(pFieldInfo->pOffset);
  tfree(pFieldInfo->pFields);
  tfree(pFieldInfo->pVisibleCols);

  memset(pFieldInfo, 0, sizeof(SFieldInfo));
}
