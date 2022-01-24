#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  int int32_t ;
typedef  int int16_t ;
struct TYPE_5__ {int usedIndex; int /*<<< orphan*/  hashList; int /*<<< orphan*/ * pResult; } ;
typedef  TYPE_1__ SQueryRuntimeEnv ;
typedef  int /*<<< orphan*/  SOutputRes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int TSDB_CODE_SUCCESS ; 
#define  TSDB_DATA_TYPE_BIGINT 131 
#define  TSDB_DATA_TYPE_INT 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC9(SQueryRuntimeEnv *pRuntimeEnv, char *pData, int16_t type, char *columnData) {
  SOutputRes *pOutputRes = NULL;

  // ignore the null value
  if (FUNC5(pData, type)) {
    return -1;
  }

  int64_t t = 0;
  switch (type) {
    case TSDB_DATA_TYPE_TINYINT:
      t = FUNC3(pData);
      break;
    case TSDB_DATA_TYPE_BIGINT:
      t = FUNC2(pData);
      break;
    case TSDB_DATA_TYPE_SMALLINT:
      t = FUNC0(pData);
      break;
    case TSDB_DATA_TYPE_INT:
    default:
      t = FUNC1(pData);
      break;
  }

  SOutputRes **p1 = (SOutputRes **)FUNC8(pRuntimeEnv->hashList, t);
  if (p1 != NULL) {
    pOutputRes = *p1;
  } else {
    // more than the threshold number, discard data that are not belong to current groups
    if (pRuntimeEnv->usedIndex >= 10000) {
      return -1;
    }

    // add a new result set for a new group
    char *b = (char *)&pRuntimeEnv->pResult[pRuntimeEnv->usedIndex++];
    pOutputRes = *(SOutputRes **)FUNC7(pRuntimeEnv->hashList, t, (char *)&b);
  }

  FUNC6(pRuntimeEnv, pOutputRes);
  FUNC4(pRuntimeEnv);

  return TSDB_CODE_SUCCESS;
}