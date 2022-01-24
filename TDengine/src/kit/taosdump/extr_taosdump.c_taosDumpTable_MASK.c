#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct arguments {int dummy; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  STableDef ;
typedef  int /*<<< orphan*/  SColDes ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int TSDB_MAX_COLUMNS ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,struct arguments*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,struct arguments*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,struct arguments*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *) ; 

int32_t FUNC6(char *table, char *metric, struct arguments *arguments, FILE *fp) {
  int count = 0;

  STableDef *tableDes = (STableDef *)FUNC0(1, sizeof(STableDef) + sizeof(SColDes) * TSDB_MAX_COLUMNS);

  if (metric != NULL && metric[0] != '\0') {  // dump metric definition
    count = FUNC5(metric, tableDes);

    if (count < 0) return -1;

    FUNC3(tableDes, count, arguments, fp);

    FUNC1(tableDes, 0, sizeof(STableDef) + sizeof(SColDes) * TSDB_MAX_COLUMNS);

    count = FUNC5(table, tableDes);

    if (count < 0) return -1;

    FUNC2(tableDes, metric, count, arguments, fp);

  } else {  // dump table definition
    count = FUNC5(table, tableDes);

    if (count < 0) return -1;

    FUNC3(tableDes, count, arguments, fp);
  }

  return FUNC4(fp, table, arguments);
}