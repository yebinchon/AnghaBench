#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pz; } ;
struct TYPE_5__ {TYPE_1__ val; } ;
typedef  TYPE_2__ tSQLExpr ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  QUERY_COND_REL_PREFIX_LIKE ; 
 int /*<<< orphan*/  TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC2(tSQLExpr* pExpr, char* str) {
  FUNC0(str, QUERY_COND_REL_PREFIX_LIKE);
  str += FUNC1(QUERY_COND_REL_PREFIX_LIKE);

  FUNC0(str, pExpr->val.pz);

  return TSDB_CODE_SUCCESS;
}