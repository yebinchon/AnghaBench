
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_8__ {int numOfCols; TYPE_2__* colList; } ;
struct TYPE_6__ {scalar_t__ colId; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
typedef TYPE_3__ SQuery ;


 int GET_QINFO_ADDR (TYPE_3__*) ;
 int dError (char*,int ) ;

bool vnodeParametersSafetyCheck(SQuery *pQuery) {

  for (int32_t i = 0; i < pQuery->numOfCols - 1; ++i) {
    if (pQuery->colList[i].data.colId == pQuery->colList[i + 1].data.colId) {
      dError("QInfo:%p invalid data load column for query", GET_QINFO_ADDR(pQuery));
      return 0;
    }
  }
  return 1;
}
