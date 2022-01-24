#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_10__ {scalar_t__ size; scalar_t__ aOutputBuf; } ;
struct TYPE_9__ {int /*<<< orphan*/  superTableQ; } ;
struct TYPE_8__ {scalar_t__ hasResult; double dsum; int /*<<< orphan*/  isum; } ;
typedef  TYPE_1__ SSumInfo ;
typedef  TYPE_2__ SResultInfo ;
typedef  TYPE_3__ SQLFunctionCtx ;

/* Variables and functions */
 scalar_t__ DATA_SET_FLAG ; 
 char* FUNC0 (TYPE_3__ const*,scalar_t__) ; 
 TYPE_2__* FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
#define  TSDB_DATA_TYPE_BIGINT 133 
#define  TSDB_DATA_TYPE_DOUBLE 132 
#define  TSDB_DATA_TYPE_FLOAT 131 
#define  TSDB_DATA_TYPE_INT 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int type ; 

__attribute__((used)) static int32_t FUNC4(const SQLFunctionCtx *pCtx) {
  int32_t notNullElems = 0;

  FUNC2();
  SResultInfo *pResInfo = FUNC1(pCtx);
  FUNC3(pResInfo->superTableQ);

  for (int32_t i = 0; i < pCtx->size; ++i) {
    char *    input = FUNC0(pCtx, i);
    SSumInfo *pInput = (SSumInfo *)input;
    if (pInput->hasResult != DATA_SET_FLAG) {
      continue;
    }

    notNullElems++;

    switch (type) {
      case TSDB_DATA_TYPE_TINYINT:
      case TSDB_DATA_TYPE_SMALLINT:
      case TSDB_DATA_TYPE_INT:
      case TSDB_DATA_TYPE_BIGINT: {
        *(int64_t *)pCtx->aOutputBuf += pInput->isum;
        break;
      };
      case TSDB_DATA_TYPE_FLOAT:
      case TSDB_DATA_TYPE_DOUBLE: {
        *(double *)pCtx->aOutputBuf += pInput->dsum;
      }
    }
  }

  return notNullElems;
}