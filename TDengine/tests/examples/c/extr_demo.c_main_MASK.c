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
typedef  int /*<<< orphan*/  TAOS_ROW ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  int /*<<< orphan*/  TAOS_FIELD ;
typedef  int /*<<< orphan*/  TAOS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(int argc, char *argv[]) {
  TAOS *    taos;
  char      qstr[1024];
  TAOS_RES *result;

  // connect to server
  if (argc < 2) {
    FUNC2("please input server-ip \n");
    return 0;
  }

  // init TAOS
  FUNC10();

  taos = FUNC4(argv[1], "root", "taosdata", NULL, 0);
  if (taos == NULL) {
    FUNC2("failed to connect to server, reason:%s\n", FUNC5(taos));
    FUNC0(1);
  }
  FUNC2("success to connect to server\n");
  

  FUNC12(taos, "drop database demo");
  if (FUNC12(taos, "create database demo") != 0) {
    FUNC2("failed to create database, reason:%s\n", FUNC5(taos));
    FUNC0(1);
  }
  FUNC2("success to create database\n");

  FUNC12(taos, "use demo");

  // create table
  if (FUNC12(taos, "create table m1 (ts timestamp, speed int)") != 0) {
    FUNC2("failed to create table, reason:%s\n", FUNC5(taos));
    FUNC0(1);
  }
  FUNC2("success to create table\n");

  // sleep for one second to make sure table is created on data node
  // taosMsleep(1000);

  // insert 10 records
  int i = 0;
  for (i = 0; i < 10; ++i) {
    FUNC3(qstr, "insert into m1 values (%ld, %d)", 1546300800000 + i * 1000, i * 10);
    if (FUNC12(taos, qstr)) {
      FUNC2("failed to insert row: %i, reason:%s\n", i, FUNC5(taos));
    }
    //sleep(1);
  }
  FUNC2("success to insert rows, total %d rows\n", i);

  // query the records
  FUNC3(qstr, "SELECT * FROM m1");
  if (FUNC12(taos, qstr) != 0) {
    FUNC2("failed to select, reason:%s\n", FUNC5(taos));
    FUNC0(1);
  }

  result = FUNC13(taos);

  if (result == NULL) {
    FUNC2("failed to get result, reason:%s\n", FUNC5(taos));
    FUNC0(1);
  }

  TAOS_ROW    row;
  int         rows = 0;
  int         num_fields = FUNC8(taos);
  TAOS_FIELD *fields = FUNC6(result);
  char        temp[256];

  FUNC2("select * from table, result:\n");
  // fetch the records row by row
  while ((row = FUNC7(result))) {
    rows++;
    FUNC11(temp, row, fields, num_fields);
    FUNC2("%s\n", temp);
  }

  FUNC9(result);
  FUNC2("====demo end====\n\n");
  return FUNC1();
}