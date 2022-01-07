
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_9__ {int numOfOutputCols; } ;
struct TYPE_12__ {TYPE_1__ fieldsInfo; } ;
struct TYPE_11__ {int numOfnchar; int code; short* bytes; char** buffer; int * tsrow; } ;
struct TYPE_10__ {scalar_t__ type; } ;
typedef TYPE_2__ TAOS_FIELD ;
typedef TYPE_3__ SSqlRes ;
typedef TYPE_4__ SSqlCmd ;


 int POINTER_BYTES ;
 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 int * calloc (int,int) ;
 TYPE_2__* tscFieldInfoGetField (TYPE_4__*,int) ;

int32_t tscCreateResPointerInfo(SSqlCmd* pCmd, SSqlRes* pRes) {
  if (pRes->tsrow == ((void*)0)) {
    pRes->numOfnchar = 0;
    int32_t numOfOutputCols = pCmd->fieldsInfo.numOfOutputCols;

    for (int32_t i = 0; i < numOfOutputCols; ++i) {
      TAOS_FIELD* pField = tscFieldInfoGetField(pCmd, i);
      if (pField->type == TSDB_DATA_TYPE_NCHAR) {
        pRes->numOfnchar++;
      }
    }

    pRes->tsrow = calloc(1, (POINTER_BYTES + sizeof(short)) * numOfOutputCols + POINTER_BYTES * pRes->numOfnchar);
    if (pRes->tsrow == ((void*)0)) {
      pRes->code = TSDB_CODE_CLI_OUT_OF_MEMORY;
      return pRes->code;
    }

    pRes->bytes = (short*)((char*)pRes->tsrow + POINTER_BYTES * numOfOutputCols);
    if (pRes->numOfnchar > 0) {
      pRes->buffer = (char**)((char*)pRes->bytes + sizeof(short) * numOfOutputCols);
    }
  }

  return TSDB_CODE_SUCCESS;
}
