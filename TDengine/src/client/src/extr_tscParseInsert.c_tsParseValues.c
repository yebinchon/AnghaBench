
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef int int16_t ;
struct TYPE_16__ {scalar_t__ precision; scalar_t__ rowSize; } ;
struct TYPE_15__ {int* hasVal; } ;
struct TYPE_14__ {scalar_t__ n; scalar_t__ type; } ;
struct TYPE_13__ {scalar_t__ size; scalar_t__ nAllocSize; } ;
typedef TYPE_1__ STableDataBlocks ;
typedef int SSchema ;
typedef TYPE_2__ SSQLToken ;
typedef TYPE_3__ SParsedDataColInfo ;
typedef TYPE_4__ SMeterMeta ;


 scalar_t__ TK_LP ;
 scalar_t__ TK_RP ;
 int setErrMsg (char*,char*) ;
 int strcpy (char*,char*) ;
 TYPE_2__ tStrGetToken (char*,scalar_t__*,int,int ,int *) ;
 int * tsGetSchema (TYPE_4__*) ;
 scalar_t__ tsParseOneRowData (char**,TYPE_1__*,int *,TYPE_3__*,char*,scalar_t__) ;
 scalar_t__ tscAllocateMemIfNeed (TYPE_1__*,scalar_t__) ;

int tsParseValues(char **str, STableDataBlocks *pDataBlock, SMeterMeta *pMeterMeta, int maxRows,
                  SParsedDataColInfo *spd, char *error) {
  int32_t index = 0;
  SSQLToken sToken;

  int16_t numOfRows = 0;

  SSchema *pSchema = tsGetSchema(pMeterMeta);
  int32_t precision = pMeterMeta->precision;

  if (spd->hasVal[0] == 0) {
    strcpy(error, "primary timestamp column can not be null");
    return -1;
  }

  while (1) {
    index = 0;
    sToken = tStrGetToken(*str, &index, 0, 0, ((void*)0));
    if (sToken.n == 0 || sToken.type != TK_LP) break;

    *str += index;
    if (numOfRows >= maxRows || pDataBlock->size + pMeterMeta->rowSize >= pDataBlock->nAllocSize) {
      int32_t tSize = tscAllocateMemIfNeed(pDataBlock, pMeterMeta->rowSize);
      if (0 == tSize) {
        strcpy(error, "client out of memory");
        return -1;
      }
      maxRows += tSize;
    }

    int32_t len = tsParseOneRowData(str, pDataBlock, pSchema, spd, error, precision);
    if (len <= 0) {
      setErrMsg(error, *str);
      return -1;
    }

    pDataBlock->size += len;

    index = 0;
    sToken = tStrGetToken(*str, &index, 0, 0, ((void*)0));
    *str += index;
    if (sToken.n == 0 || sToken.type != TK_RP) {
      setErrMsg(error, *str);
      return -1;
    }

    numOfRows++;
  }

  if (numOfRows <= 0) {
    strcpy(error, "no any data points");
    return -1;
  } else {
    return numOfRows;
  }
}
