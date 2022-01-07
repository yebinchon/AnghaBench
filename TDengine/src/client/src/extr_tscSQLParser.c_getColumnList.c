
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_5__ {int num; TYPE_1__* ids; int member_0; } ;
struct TYPE_4__ {int columnIndex; scalar_t__ tableIndex; } ;
typedef TYPE_2__ SColumnList ;


 int assert (int) ;

__attribute__((used)) static SColumnList getColumnList(int32_t num, int16_t tableIndex, int32_t columnIndex) {
  assert(num == 1 && columnIndex >= -1 && tableIndex >= 0);

  SColumnList columnList = {0};
  columnList.num = num;

  int32_t index = num - 1;
  columnList.ids[index].tableIndex = tableIndex;
  columnList.ids[index].columnIndex = columnIndex;

  return columnList;
}
