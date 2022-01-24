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
typedef  void* uint32_t ;
struct TYPE_3__ {void* root_page_num; int /*<<< orphan*/  pager; } ;
typedef  TYPE_1__ Table ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void** FUNC4 (void*,int /*<<< orphan*/ ) ; 
 void** FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int* FUNC6 (void*) ; 
 void** FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,int /*<<< orphan*/ ) ; 
 void** FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*,int) ; 

void FUNC11(Table* table, uint32_t right_child_page_num) {
  /*
  Handle splitting the root.
  Old root copied to new page, becomes left child.
  Address of right child passed in.
  Re-initialize root page to contain the new root node.
  New root node points to two children.
  */

  void* root = FUNC1(table->pager, table->root_page_num);
  void* right_child = FUNC1(table->pager, right_child_page_num);
  uint32_t left_child_page_num = FUNC2(table->pager);
  void* left_child = FUNC1(table->pager, left_child_page_num);

  /* Left child has data copied from old root */
  FUNC8(left_child, root, PAGE_SIZE);
  FUNC10(left_child, false);

  /* Root node is a new internal node with one key and two children */
  FUNC3(root);
  FUNC10(root, true);
  *FUNC6(root) = 1;
  *FUNC4(root, 0) = left_child_page_num;
  uint32_t left_child_max_key = FUNC0(left_child);
  *FUNC5(root, 0) = left_child_max_key;
  *FUNC7(root) = right_child_page_num;
  *FUNC9(left_child) = table->root_page_num;
  *FUNC9(right_child) = table->root_page_num;
}