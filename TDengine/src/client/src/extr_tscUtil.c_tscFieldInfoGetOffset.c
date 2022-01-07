
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_4__ {size_t numOfOutputCols; int * pOffset; } ;
struct TYPE_5__ {TYPE_1__ fieldsInfo; } ;
typedef TYPE_2__ SSqlCmd ;



int16_t tscFieldInfoGetOffset(SSqlCmd* pCmd, int32_t index) {
  if (index >= pCmd->fieldsInfo.numOfOutputCols) {
    return 0;
  }

  return pCmd->fieldsInfo.pOffset[index];
}
