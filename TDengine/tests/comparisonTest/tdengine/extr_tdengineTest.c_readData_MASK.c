#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_2__ {char* sql; } ;
typedef  int /*<<< orphan*/  TAOS_ROW ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__ arguments ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (char*) ; 
 void* FUNC9 (char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 char* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int FUNC14 (void*,char*) ; 
 void* FUNC15 (void*) ; 

void FUNC16() {
  FUNC7("read data\n");
  FUNC7("---- sql: %s\n", arguments.sql);

  void *taos = FUNC9("127.0.0.1", "root", "taosdata", NULL, 0);
  if (taos == NULL)
    FUNC10(taos);

  FILE *fp = FUNC3(arguments.sql, "r");
  if (fp == NULL) {
    FUNC7("failed to open file %s\n", arguments.sql);
    FUNC0(1);
  }
  FUNC7("open file %s success\n", arguments.sql);

  char *line = NULL;
  size_t len = 0;
  while (!FUNC2(fp)) {
    FUNC4(line);
    line = NULL;
    len = 0;

    FUNC6(&line, &len, fp);
    if (line == NULL) break;

    if (FUNC8(line) < 10) continue;

    int64_t st = FUNC5();

    int code = FUNC14(taos, line);
    if (code != 0) {
      FUNC10(taos);
    }

    void *result = FUNC15(taos);
    if (result == NULL) {
      FUNC7("failed to get result, reason:%s\n", FUNC11(taos));
      FUNC0(1);
    }

    TAOS_ROW row;
    int rows = 0;
    //int num_fields = taos_field_count(taos);
    //TAOS_FIELD *fields = taos_fetch_fields(result);
    while ((row = FUNC12(result))) {
      rows++;
      //char        temp[256];
      //taos_print_row(temp, row, fields, num_fields);
      //printf("%s\n", temp);
    }

    FUNC13(result);

    int64_t elapsed = FUNC5() - st;
    float seconds = (float)elapsed / 1000;
    FUNC7("---- Spent %f seconds to query: %s", seconds, line);
  }

  FUNC1(fp);
}