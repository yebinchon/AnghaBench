#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_6__ {TYPE_3__* pSql; int /*<<< orphan*/  precision; int /*<<< orphan*/  slidingTime; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_1__ SSqlStream ;
typedef  int /*<<< orphan*/  SMeterMetaInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_3__*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tscProcessStreamRetrieveResult ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *param, TAOS_RES *tres, int numOfRows) {
  SSqlStream *pStream = (SSqlStream *)param;
  if (tres == NULL || numOfRows < 0) {
    int64_t retryDelay = FUNC4(pStream->slidingTime, pStream->precision);
    FUNC2("%p stream:%p, query data failed, code:%d, retry in %lldms", pStream->pSql, pStream, numOfRows,
             retryDelay);

    SMeterMetaInfo* pMeterMetaInfo = FUNC3(&pStream->pSql->cmd, 0);
    FUNC1(pMeterMetaInfo, true);

    FUNC5(pStream, pStream->pSql, retryDelay);
    return;
  }

  FUNC0(tres, tscProcessStreamRetrieveResult, param);
}