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
typedef  int /*<<< orphan*/  TAOS_SUB ;
typedef  int /*<<< orphan*/ * TAOS_ROW ;
typedef  int /*<<< orphan*/  TAOS_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*,char*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(int argc, char *argv[]) 
{
  TAOS_SUB   *tsub;
  TAOS_ROW    row;
  char        dbname[64], table[64];
  char        temp[256];

  if ( argc == 1 ) {
    FUNC1("usage: %s server-ip db-name table-name \n", argv[0]);
    FUNC0(0);
  } 

  if ( argc >= 2 ) FUNC2(dbname, argv[2]);
  if ( argc >= 3 ) FUNC2(table, argv[3]);

  tsub = FUNC7(argv[1], "root", "taosdata", dbname, table, 0, 1000);
  if ( tsub == NULL ) {
    FUNC1("failed to connet to db:%s\n", dbname);
    FUNC0(1);
  }

  TAOS_FIELD *fields = FUNC4(tsub);
  int fcount = FUNC6(tsub);

  FUNC1("start to retrieve data\n");
  FUNC1("please use other taos client, insert rows into %s.%s\n", dbname, table);
  while ( 1 ) {
    row = FUNC3(tsub);
    if ( row == NULL ) break;

    FUNC5(temp, row, fields, fcount);
    FUNC1("%s\n", temp);
  }

  FUNC8(tsub);

  return 0;
}