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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  pager; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  Cursor ;

/* Variables and functions */
#define  NODE_INTERNAL 129 
#define  NODE_LEAF 128 
 int FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Cursor* FUNC5(Table* table, uint32_t page_num, uint32_t key) {
  void* node = FUNC1(table->pager, page_num);

  uint32_t child_index = FUNC3(node, key);
  uint32_t child_num = *FUNC2(node, child_index);
  void* child = FUNC1(table->pager, child_num);
  switch (FUNC0(child)) {
    case NODE_LEAF:
      return FUNC4(table, child_num, key);
    case NODE_INTERNAL:
      return FUNC5(table, child_num, key);
  }
}