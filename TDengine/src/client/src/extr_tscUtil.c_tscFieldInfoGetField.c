
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_4__ {size_t numOfOutputCols; int * pFields; } ;
struct TYPE_5__ {TYPE_1__ fieldsInfo; } ;
typedef int TAOS_FIELD ;
typedef TYPE_2__ SSqlCmd ;



TAOS_FIELD* tscFieldInfoGetField(SSqlCmd* pCmd, int32_t index) {
  if (index >= pCmd->fieldsInfo.numOfOutputCols) {
    return ((void*)0);
  }

  return &pCmd->fieldsInfo.pFields[index];
}
