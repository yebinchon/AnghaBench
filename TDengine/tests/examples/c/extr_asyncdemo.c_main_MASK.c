#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_4__ {int id; char* name; int timeStamp; int rowsInserted; int rowsRetrieved; int /*<<< orphan*/ * taos; } ;
typedef  int /*<<< orphan*/  TAOS ;
typedef  TYPE_1__ STable ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int numOfTables ; 
 void* points ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,...) ; 
 int st ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ tablesProcessed ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  taos_insert_call_back ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  taos_select_call_back ; 

int FUNC16(int argc, char *argv[])
{
  TAOS   *taos;
  struct  timeval systemTime;
  int     i;
  char    sql[1024]  = { 0 };
  char    prefix[20] = { 0 };
  char    db[128]    = { 0 };
  STable *tableList;

  if (argc != 5) {
    FUNC7("usage: %s server-ip dbname rowsPerTable numOfTables\n", argv[0]);
    FUNC1(0);
  }

  // a simple way to parse input parameters
  if (argc >= 3) FUNC9(db, argv[2]);
  if (argc >= 4) points = FUNC0(argv[3]);
  if (argc >= 5) numOfTables = FUNC0(argv[4]);

  size_t size = sizeof(STable) * (size_t)numOfTables;
  tableList = (STable *)FUNC5(size);
  FUNC6(tableList, 0, size);

  FUNC13();

  taos = FUNC11(argv[1], "root", "taosdata", NULL, 0);
  if (taos == NULL)
    FUNC12(taos);

  FUNC7("success to connect to server\n");

  FUNC8(sql, "drop database %s", db);
  FUNC14(taos, sql);

  FUNC8(sql, "create database %s", db);
  if (FUNC14(taos, sql) != 0)
    FUNC12(taos);

  FUNC8(sql, "use %s", db);
  if (FUNC14(taos, sql) != 0)
    FUNC12(taos);

  FUNC9(prefix, "asytbl_");
  for (i = 0; i < numOfTables; ++i) {
    tableList[i].id = i;
    tableList[i].taos = taos;
    FUNC8(tableList[i].name, "%s%d", prefix, i);
    FUNC8(sql, "create table %s%d (ts timestamp, volume bigint)", prefix, i);
    if (FUNC14(taos, sql) != 0)
      FUNC12(taos);
  }  

  FUNC4(&systemTime, NULL);
  for (i = 0; i < numOfTables; ++i)
    tableList[i].timeStamp = (time_t)(systemTime.tv_sec) * 1000 + systemTime.tv_usec / 1000;

  FUNC7("success to create tables, press any key to insert\n");
  FUNC3();

  FUNC7("start to insert...\n");
  FUNC4(&systemTime, NULL);
  st = systemTime.tv_sec * 1000000 + systemTime.tv_usec;

  for (i = 0; i<numOfTables; ++i) {
    // insert records in asynchronous API
    FUNC8(sql, "insert into %s values(%ld, 0)", tableList[i].name, 1546300800000 + i);
    FUNC15(taos, sql, taos_insert_call_back, (void *)(tableList + i));
  }

  FUNC7("once insert finished, presse any key to query\n");
  FUNC3();

  FUNC7("start to query...\n");
  FUNC4(&systemTime, NULL);
  st = systemTime.tv_sec * 1000000 + systemTime.tv_usec;
  tablesProcessed = 0;

  for (i = 0; i < numOfTables; ++i) {
    // select records in asynchronous API 
    FUNC8(sql, "select * from %s", tableList[i].name);
    FUNC15(taos, sql, taos_select_call_back, (void *)(tableList + i));
  }

  FUNC7("\nonce finished, press any key to exit\n");
  FUNC3();

  for (i = 0; i<numOfTables; ++i)  {
    FUNC7("%s inserted:%d retrieved:%d\n", tableList[i].name, tableList[i].rowsInserted, tableList[i].rowsRetrieved);
  }

  FUNC3();

  FUNC10(taos);
  FUNC2(tableList);

  FUNC7("==== async demo end====\n");
  FUNC7("\n");
  return 0;
}