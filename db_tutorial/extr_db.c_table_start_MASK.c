#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  pager; } ;
typedef  TYPE_1__ Table ;
struct TYPE_8__ {int end_of_table; int /*<<< orphan*/  page_num; } ;
typedef  TYPE_2__ Cursor ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (void*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

Cursor* FUNC3(Table* table) {
  Cursor* cursor = FUNC2(table, 0);

  void* node = FUNC0(table->pager, cursor->page_num);
  uint32_t num_cells = *FUNC1(node);
  cursor->end_of_table = (num_cells == 0);

  return cursor;
}