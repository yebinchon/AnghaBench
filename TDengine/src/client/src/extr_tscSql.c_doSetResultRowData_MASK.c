#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_12__ {int numOfOutputCols; } ;
struct TYPE_16__ {scalar_t__ nAggTimeInterval; TYPE_1__ fieldsInfo; int /*<<< orphan*/  order; } ;
struct TYPE_14__ {void** tsrow; int* bytes; int row; void** buffer; } ;
struct TYPE_15__ {TYPE_3__ res; TYPE_5__ cmd; } ;
struct TYPE_13__ {scalar_t__ type; scalar_t__ bytes; } ;
typedef  TYPE_2__ TAOS_FIELD ;
typedef  TYPE_3__ SSqlRes ;
typedef  TYPE_4__ SSqlObj ;
typedef  TYPE_5__ SSqlCmd ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_UNICODE_ENCODEC ; 
 void* FUNC0 (TYPE_3__*,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ TSDB_DATA_TYPE_NCHAR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*,scalar_t__) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC5 (void*,scalar_t__) ; 
 scalar_t__ FUNC6 (void*,scalar_t__,void*) ; 
 int /*<<< orphan*/  tsCharset ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 TYPE_2__* FUNC8 (TYPE_5__*,int) ; 

__attribute__((used)) static void **FUNC9(SSqlObj *pSql) {
  SSqlCmd *pCmd = &pSql->cmd;
  SSqlRes *pRes = &pSql->res;

  int32_t num = 0;

  for (int i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    pRes->tsrow[i] = FUNC0(pRes, pCmd, i, pCmd->order) + pRes->bytes[i] * pRes->row;

    // primary key column cannot be null in interval query, no need to check
    if (i == 0 && pCmd->nAggTimeInterval > 0) {
      continue;
    }

    TAOS_FIELD *pField = FUNC8(pCmd, i);

    if (FUNC2(pRes->tsrow[i], pField->type)) {
      pRes->tsrow[i] = NULL;
    } else if (pField->type == TSDB_DATA_TYPE_NCHAR) {
      // convert unicode to native code in a temporary buffer extra one byte for terminated symbol
      if (pRes->buffer[num] == NULL) {
        pRes->buffer[num] = FUNC3(pField->bytes + 1);
      } else {
        pRes->buffer[num] = FUNC5(pRes->buffer[num], pField->bytes + 1);
      }

      /* string terminated */
      FUNC4(pRes->buffer[num], 0, pField->bytes + 1);

      if (FUNC6(pRes->tsrow[i], pField->bytes, pRes->buffer[num])) {
        pRes->tsrow[i] = pRes->buffer[num];
      } else {
        FUNC7("%p charset:%s to %s. val:%ls convert failed.", pSql, DEFAULT_UNICODE_ENCODEC, tsCharset, pRes->tsrow);
        pRes->tsrow[i] = NULL;
      }
      num++;
    }
  }

  FUNC1(num <= pCmd->fieldsInfo.numOfOutputCols);

  return pRes->tsrow;
}