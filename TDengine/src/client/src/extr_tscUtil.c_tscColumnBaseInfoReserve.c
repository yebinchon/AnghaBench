
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int SColumnBaseInfo ;


 int _cf_ensureSpace (int *,int ) ;

void tscColumnBaseInfoReserve(SColumnBaseInfo* pColumnBaseInfo, int32_t size) {
  _cf_ensureSpace(pColumnBaseInfo, size);
}
