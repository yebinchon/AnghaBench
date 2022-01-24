#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* cols; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  bytes; } ;
struct TYPE_6__ {int length; int /*<<< orphan*/  note; int /*<<< orphan*/  type; int /*<<< orphan*/  field; } ;
typedef  scalar_t__* TAOS_ROW ;
typedef  TYPE_2__ TAOS_FIELD ;
typedef  TYPE_3__ STableDef ;

/* Variables and functions */
 size_t TSDB_DESCRIBE_METRIC_FIELD_INDEX ; 
 size_t TSDB_DESCRIBE_METRIC_LENGTH_INDEX ; 
 size_t TSDB_DESCRIBE_METRIC_NOTE_INDEX ; 
 size_t TSDB_DESCRIBE_METRIC_TYPE_INDEX ; 
 char* command ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * result ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taos ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(char *table, STableDef *tableDes) {
  TAOS_ROW row = NULL;
  int count = 0;

  FUNC1(command, "describe %s", table);
  if (FUNC7(taos, command) != 0) {
    FUNC0(stderr, "failed to run command %s\n", command);
    return -1;
  }

  result = FUNC8(taos);
  if (result == NULL) {
    FUNC0(stderr, "failed to use result\n");
    return -1;
  }

  TAOS_FIELD *fields = FUNC4(result);

  FUNC2(tableDes->name, table);

  while ((row = FUNC5(result)) != NULL) {
    FUNC3(tableDes->cols[count].field, (char *)row[TSDB_DESCRIBE_METRIC_FIELD_INDEX],
            fields[TSDB_DESCRIBE_METRIC_FIELD_INDEX].bytes);
    FUNC3(tableDes->cols[count].type, (char *)row[TSDB_DESCRIBE_METRIC_TYPE_INDEX],
            fields[TSDB_DESCRIBE_METRIC_TYPE_INDEX].bytes);
    tableDes->cols[count].length = *((int *)row[TSDB_DESCRIBE_METRIC_LENGTH_INDEX]);
    FUNC3(tableDes->cols[count].note, (char *)row[TSDB_DESCRIBE_METRIC_NOTE_INDEX],
            fields[TSDB_DESCRIBE_METRIC_NOTE_INDEX].bytes);

    count++;
  }

  FUNC6(result);
  result = NULL;

  return count;
}