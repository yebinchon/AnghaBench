
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ numOfCols; } ;
typedef int SSqlFuncExprMsg ;
typedef TYPE_1__ SQueryMeterMsg ;


 scalar_t__ getColumnIndexInSource (TYPE_1__*,int *) ;

bool vnodeValidateExprColumnInfo(SQueryMeterMsg* pQueryMsg, SSqlFuncExprMsg* pExprMsg) {
  int32_t j = getColumnIndexInSource(pQueryMsg, pExprMsg);
  return j < pQueryMsg->numOfCols;
}
