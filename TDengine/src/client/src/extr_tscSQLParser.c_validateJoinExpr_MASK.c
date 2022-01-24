#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  tsJoin; int /*<<< orphan*/ * pJoinExpr; } ;
struct TYPE_7__ {int numOfTables; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ SSqlCmd ;
typedef  int /*<<< orphan*/  SMeterMetaInfo ;
typedef  TYPE_2__ SCondExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSDB_CODE_INVALID_SQL ; 
 int /*<<< orphan*/  TSDB_CODE_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC4(SSqlCmd* pCmd, SCondExpr* pCondExpr) {
  const char* msg1 = "super table join requires tags column";
  const char* msg2 = "timestamp join condition missing";
  const char* msg3 = "condition missing for join query";

  if (!FUNC0(pCmd->type)) {
    if (pCmd->numOfTables == 1) {
      return TSDB_CODE_SUCCESS;
    } else {
      FUNC2(pCmd, msg3);
      return TSDB_CODE_INVALID_SQL;
    }
  }

  SMeterMetaInfo* pMeterMetaInfo = FUNC3(pCmd, 0);
  if (FUNC1(pMeterMetaInfo)) {  // for stable join, tag columns
                                               // must be present for join
    if (pCondExpr->pJoinExpr == NULL) {
      FUNC2(pCmd, msg1);
      return TSDB_CODE_INVALID_SQL;
    }
  }

  if (!pCondExpr->tsJoin) {
    FUNC2(pCmd, msg2);
    return TSDB_CODE_INVALID_SQL;
  }

  return TSDB_CODE_SUCCESS;
}