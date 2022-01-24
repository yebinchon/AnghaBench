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
struct TYPE_13__ {char* data; } ;
typedef  TYPE_2__ tFilePage ;
typedef  scalar_t__ int32_t ;
struct TYPE_12__ {scalar_t__ numOfExprs; } ;
struct TYPE_16__ {TYPE_1__ exprsInfo; } ;
struct TYPE_15__ {int numOfRows; char* data; } ;
struct TYPE_14__ {int bytes; } ;
typedef  TYPE_3__ TAOS_FIELD ;
typedef  TYPE_4__ SSqlRes ;
typedef  TYPE_5__ SSqlCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 TYPE_3__* FUNC1 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_5__*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(SSqlCmd *pCmd, SSqlRes *pRes, tFilePage *pFinalDataPage) {
  for (int32_t i = 0; i < pCmd->exprsInfo.numOfExprs; ++i) {
    TAOS_FIELD *pField = FUNC1(pCmd, i);

    int32_t offset = FUNC2(pCmd, i);
    char *  src = pFinalDataPage->data + (pRes->numOfRows - 1) * pField->bytes + pRes->numOfRows * offset;
    char *  dst = pRes->data + pRes->numOfRows * offset;

    for (int32_t j = 0; j < pRes->numOfRows; ++j) {
      FUNC0(dst, src, (size_t)pField->bytes);
      dst += pField->bytes;
      src -= pField->bytes;
    }
  }
}