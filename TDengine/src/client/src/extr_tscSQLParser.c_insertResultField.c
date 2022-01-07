
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int8_t ;
typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_7__ {size_t num; int * ids; } ;
struct TYPE_6__ {int fieldsInfo; } ;
typedef TYPE_1__ SSqlCmd ;
typedef TYPE_2__ SColumnList ;


 size_t TSDB_CODE_SUCCESS ;
 int tscColumnBaseInfoInsert (TYPE_1__*,int *) ;
 int tscFieldInfoSetValue (int *,size_t,int ,char*,int ) ;

int32_t insertResultField(SSqlCmd* pCmd, int32_t outputIndex, SColumnList* pIdList, int16_t bytes, int8_t type,
                          char* fieldName) {
  for (int32_t i = 0; i < pIdList->num; ++i) {
    tscColumnBaseInfoInsert(pCmd, &(pIdList->ids[i]));
  }

  tscFieldInfoSetValue(&pCmd->fieldsInfo, outputIndex, type, fieldName, bytes);
  return TSDB_CODE_SUCCESS;
}
