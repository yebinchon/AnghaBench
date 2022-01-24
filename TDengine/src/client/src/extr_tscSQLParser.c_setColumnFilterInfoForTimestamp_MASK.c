#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  nLen; int /*<<< orphan*/  pz; } ;
typedef  TYPE_2__ tVariant ;
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {TYPE_1__* pMeterMeta; } ;
struct TYPE_9__ {int /*<<< orphan*/  precision; } ;
typedef  int /*<<< orphan*/  SSqlCmd ;
typedef  TYPE_3__ SMeterMetaInfo ;

/* Variables and functions */
 int TSDB_CODE_INVALID_SQL ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_BIGINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(SSqlCmd* pCmd, tVariant* pVar) {
  int64_t     time = 0;
  const char* msg = "invalid timestamp";

  FUNC1(pVar->pz);
  char*           seg = FUNC2(pVar->pz, '-', pVar->nLen, false);
  SMeterMetaInfo* pMeterMetaInfo = FUNC7(pCmd, 0);

  if (seg != NULL) {
    if (FUNC6(pVar->pz, &time, pVar->nLen, pMeterMetaInfo->pMeterMeta->precision) != TSDB_CODE_SUCCESS) {
      FUNC0(pCmd, msg);
      return TSDB_CODE_INVALID_SQL;
    }
  } else {
    if (FUNC5(pVar, (char*)&time, TSDB_DATA_TYPE_BIGINT)) {
      FUNC0(pCmd, msg);
      return TSDB_CODE_INVALID_SQL;
    }
  }

  FUNC4(pVar);
  FUNC3(pVar, (char*)&time, 0, TSDB_DATA_TYPE_BIGINT);

  return TSDB_CODE_SUCCESS;
}