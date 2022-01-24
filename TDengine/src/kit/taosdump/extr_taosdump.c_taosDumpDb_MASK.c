#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct arguments {int /*<<< orphan*/  with_property; } ;
struct TYPE_12__ {char* name; } ;
struct TYPE_11__ {int /*<<< orphan*/  metric; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  bytes; } ;
typedef  scalar_t__* TAOS_ROW ;
typedef  TYPE_1__ TAOS_FIELD ;
typedef  TYPE_2__ STableRecord ;
typedef  TYPE_3__ SDbInfo ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRWXU ; 
 int S_IXGRP ; 
 size_t TSDB_SHOW_TABLES_METRIC_INDEX ; 
 size_t TSDB_SHOW_TABLES_NAME_INDEX ; 
 char* command ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,int,int) ; 
 scalar_t__ FUNC4 (int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * result ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taos ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arguments*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int,TYPE_2__*,int) ; 

int FUNC17(SDbInfo *dbInfo, struct arguments *arguments, FILE *fp) {
  TAOS_ROW row;
  int fd = -1;
  STableRecord tableRecord;

  FUNC8(dbInfo, arguments->with_property, fp);

  FUNC6(command, "use %s", dbInfo->name);
  if (FUNC13(taos, command) != 0) {
    FUNC0(stderr, "invalid database %s\n", dbInfo->name);
    return -1;
  }

  FUNC0(*fp, "USE %s\n\n", dbInfo->name);

  FUNC6(command, "show tables");
  if (FUNC13(taos, command) != 0) {
    FUNC0(stderr, "failed to run command %s\n", command);
    return -1;
  }

  result = FUNC14(taos);
  if (result == NULL) {
    FUNC0(stderr, "failed to use result\n");
    return -1;
  }

  TAOS_FIELD *fields = FUNC10(result);

  fd = FUNC3(".table.tmp", O_RDWR | O_CREAT, S_IRWXU | S_IRGRP | S_IXGRP | S_IROTH);
  if (fd == -1) {
    FUNC0(stderr, "failed to open temp file\n");
    FUNC12(result);
    return -1;
  }

  while ((row = FUNC11(result)) != NULL) {
    FUNC2(&tableRecord, 0, sizeof(STableRecord));
    FUNC7(tableRecord.name, (char *)row[TSDB_SHOW_TABLES_NAME_INDEX], fields[TSDB_SHOW_TABLES_NAME_INDEX].bytes);
    FUNC7(tableRecord.metric, (char *)row[TSDB_SHOW_TABLES_METRIC_INDEX], fields[TSDB_SHOW_TABLES_METRIC_INDEX].bytes);

    FUNC16(fd, &tableRecord, sizeof(STableRecord));
  }

  FUNC12(result);

  FUNC1(fd, 0, SEEK_SET);

  while (FUNC4(fd, &tableRecord, sizeof(STableRecord)) > 0) {
    FUNC9(tableRecord.name, tableRecord.metric, arguments, fp);
  }

  FUNC15(fd);
  FUNC5(".table.tmp");

  return 0;
}