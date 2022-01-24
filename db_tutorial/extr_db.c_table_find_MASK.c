#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  pager; int /*<<< orphan*/  root_page_num; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  Cursor ;

/* Variables and functions */
 scalar_t__ NODE_LEAF ; 
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Cursor* FUNC4(Table* table, uint32_t key) {
  uint32_t root_page_num = table->root_page_num;
  void* root_node = FUNC1(table->pager, root_page_num);

  if (FUNC0(root_node) == NODE_LEAF) {
    return FUNC3(table, root_page_num, key);
  } else {
    return FUNC2(table, root_page_num, key);
  }
}