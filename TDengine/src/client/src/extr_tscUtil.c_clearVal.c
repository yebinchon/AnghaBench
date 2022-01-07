
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tableIndex; int columnIndex; } ;
struct TYPE_6__ {TYPE_1__ colIndex; } ;
typedef TYPE_2__ SColumnBase ;


 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void clearVal(SColumnBase* pBase) {
  memset(pBase, 0, sizeof(SColumnBase));

  pBase->colIndex.tableIndex = -2;
  pBase->colIndex.columnIndex = -2;
}
