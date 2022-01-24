#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bytes; } ;
typedef  int /*<<< orphan*/ * TAOS_ROW ;
typedef  TYPE_1__ TAOS_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * result ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (void*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (void*) ; 

void FUNC10(void *con) {
#ifdef CLUSTER
  char sql[] = "show grants";

  if (taos_query(con, sql)) {
    fprintf(stdout, "\n");
    return;
  }

  int num_fields = taos_field_count(con);
  if (num_fields == 0) {
    fprintf(stderr, "\nInvalid grant information.\n");
    exit(0);
  } else {
    result = taos_use_result(con);
    if (result == NULL) {
      fprintf(stderr, "\nGrant information is null.\n");
      exit(0);
    }

    TAOS_FIELD *fields = taos_fetch_fields(result);
    TAOS_ROW row = taos_fetch_row(result);
    if (row == NULL) {
      fprintf(stderr, "\nGrant information is empty.\n");
      exit(0);
    }

    char version[32] = {0};
    char expiretime[32] = {0};
    char expired[32] = {0};

    memcpy(version, row[0], fields[0].bytes);
    memcpy(expiretime, row[1], fields[1].bytes);
    memcpy(expired, row[2], fields[2].bytes);

    if (strcmp(expiretime, "unlimited") == 0) {
      fprintf(stdout, "This is the %s version and will never expire.\n", version);
    } else {
      fprintf(stdout, "This is the %s version and will expire at %s.\n", version, expiretime);
    }

    taos_free_result(result);
    result = NULL;
  }

  fprintf(stdout, "\n");
#endif
}