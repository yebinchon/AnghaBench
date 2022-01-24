#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
typedef  int int16_t ;
struct TYPE_16__ {scalar_t__ precision; scalar_t__ rowSize; } ;
struct TYPE_15__ {int* hasVal; } ;
struct TYPE_14__ {scalar_t__ n; scalar_t__ type; } ;
struct TYPE_13__ {scalar_t__ size; scalar_t__ nAllocSize; } ;
typedef  TYPE_1__ STableDataBlocks ;
typedef  int /*<<< orphan*/  SSchema ;
typedef  TYPE_2__ SSQLToken ;
typedef  TYPE_3__ SParsedDataColInfo ;
typedef  TYPE_4__ SMeterMeta ;

/* Variables and functions */
 scalar_t__ TK_LP ; 
 scalar_t__ TK_RP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 TYPE_2__ FUNC2 (char*,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (char**,TYPE_1__*,int /*<<< orphan*/ *,TYPE_3__*,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__) ; 

int FUNC6(char **str, STableDataBlocks *pDataBlock, SMeterMeta *pMeterMeta, int maxRows,
                  SParsedDataColInfo *spd, char *error) {
  int32_t   index = 0;
  SSQLToken sToken;

  int16_t numOfRows = 0;

  SSchema *pSchema = FUNC3(pMeterMeta);
  int32_t  precision = pMeterMeta->precision;

  if (spd->hasVal[0] == false) {
    FUNC1(error, "primary timestamp column can not be null");
    return -1;
  }

  while (1) {
    index = 0;
    sToken = FUNC2(*str, &index, false, 0, NULL);
    if (sToken.n == 0 || sToken.type != TK_LP) break;

    *str += index;
    if (numOfRows >= maxRows || pDataBlock->size + pMeterMeta->rowSize >= pDataBlock->nAllocSize) {
      int32_t tSize = FUNC5(pDataBlock, pMeterMeta->rowSize);
      if (0 == tSize) {
        FUNC1(error, "client out of memory");
        return -1;
      }
      maxRows += tSize;
    }

    int32_t len = FUNC4(str, pDataBlock, pSchema, spd, error, precision);
    if (len <= 0) {
      FUNC0(error, *str);
      return -1;
    }

    pDataBlock->size += len;

    index = 0;
    sToken = FUNC2(*str, &index, false, 0, NULL);
    *str += index;
    if (sToken.n == 0 || sToken.type != TK_RP) {
      FUNC0(error, *str);
      return -1;
    }

    numOfRows++;
  }

  if (numOfRows <= 0) {
    FUNC1(error, "no any data points");
    return -1;
  } else {
    return numOfRows;
  }
}