#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Table ;
struct TYPE_6__ {int /*<<< orphan*/  end_of_table; } ;
typedef  int /*<<< orphan*/  Statement ;
typedef  int /*<<< orphan*/  Row ;
typedef  int /*<<< orphan*/  ExecuteResult ;
typedef  TYPE_1__ Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  EXECUTE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 

ExecuteResult FUNC6(Statement* statement, Table* table) {
  Cursor* cursor = FUNC5(table);

  Row row;
  while (!(cursor->end_of_table)) {
    FUNC2(FUNC1(cursor), &row);
    FUNC4(&row);
    FUNC0(cursor);
  }

  FUNC3(cursor);

  return EXECUTE_SUCCESS;
}