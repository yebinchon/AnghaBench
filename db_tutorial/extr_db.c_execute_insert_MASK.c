#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  pager; } ;
typedef  TYPE_1__ Table ;
struct TYPE_15__ {scalar_t__ cell_num; int /*<<< orphan*/  page_num; } ;
struct TYPE_14__ {scalar_t__ id; } ;
struct TYPE_13__ {TYPE_3__ row_to_insert; } ;
typedef  TYPE_2__ Statement ;
typedef  TYPE_3__ Row ;
typedef  int /*<<< orphan*/  ExecuteResult ;
typedef  TYPE_4__ Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  EXECUTE_DUPLICATE_KEY ; 
 int /*<<< orphan*/  EXECUTE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__,TYPE_3__*) ; 
 scalar_t__* FUNC3 (void*,scalar_t__) ; 
 scalar_t__* FUNC4 (void*) ; 
 TYPE_4__* FUNC5 (TYPE_1__*,scalar_t__) ; 

ExecuteResult FUNC6(Statement* statement, Table* table) {
  Row* row_to_insert = &(statement->row_to_insert);
  uint32_t key_to_insert = row_to_insert->id;
  Cursor* cursor = FUNC5(table, key_to_insert);

  void* node = FUNC1(table->pager, cursor->page_num);
  uint32_t num_cells = *FUNC4(node);

  if (cursor->cell_num < num_cells) {
    uint32_t key_at_index = *FUNC3(node, cursor->cell_num);
    if (key_at_index == key_to_insert) {
      return EXECUTE_DUPLICATE_KEY;
    }
  }

  FUNC2(cursor, row_to_insert->id, row_to_insert);

  FUNC0(cursor);

  return EXECUTE_SUCCESS;
}