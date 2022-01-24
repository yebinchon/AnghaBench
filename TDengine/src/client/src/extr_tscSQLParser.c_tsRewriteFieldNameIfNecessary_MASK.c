#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_9__ {char* name; } ;
struct TYPE_7__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_8__ {TYPE_1__ fieldsInfo; } ;
typedef  TYPE_2__ SSqlCmd ;

/* Variables and functions */
 scalar_t__ TSDB_CODE_INVALID_SQL ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 scalar_t__ TSDB_COL_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const*) ; 
 scalar_t__ FUNC1 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,scalar_t__) ; 

int32_t FUNC4(SSqlCmd* pCmd) {
  const char rep[] = {'(', ')', '*', ',', '.', '/', '\\', '+', '-', '%', ' '};

  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    char* fieldName = FUNC3(pCmd, i)->name;
    for (int32_t j = 0; j < TSDB_COL_NAME_LEN && fieldName[j] != 0; ++j) {
      for (int32_t k = 0; k < FUNC2(rep); ++k) {
        if (fieldName[j] == rep[k]) {
          fieldName[j] = '_';
          break;
        }
      }
    }

    fieldName[TSDB_COL_NAME_LEN - 1] = 0;
  }

  // the column name may be identical, here check again
  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    char* fieldName = FUNC3(pCmd, i)->name;
    for (int32_t j = i + 1; j < pCmd->fieldsInfo.numOfOutputCols; ++j) {
      if (FUNC1(fieldName, FUNC3(pCmd, j)->name, TSDB_COL_NAME_LEN) == 0) {
        const char* msg = "duplicated column name in new table";
        FUNC0(pCmd, msg);
        return TSDB_CODE_INVALID_SQL;
      }
    }
  }

  return TSDB_CODE_SUCCESS;
}