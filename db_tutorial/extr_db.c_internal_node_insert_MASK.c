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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  pager; } ;
typedef  TYPE_1__ Table ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  INTERNAL_NODE_CELL_SIZE ; 
 scalar_t__ INTERNAL_NODE_MAX_CELLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC3 (void*,scalar_t__) ; 
 scalar_t__* FUNC4 (void*,scalar_t__) ; 
 scalar_t__ FUNC5 (void*,scalar_t__) ; 
 scalar_t__* FUNC6 (void*,scalar_t__) ; 
 scalar_t__* FUNC7 (void*) ; 
 scalar_t__* FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11(Table* table, uint32_t parent_page_num,
                          uint32_t child_page_num) {
  /*
  Add a new child/key pair to parent that corresponds to child
  */

  void* parent = FUNC2(table->pager, parent_page_num);
  void* child = FUNC2(table->pager, child_page_num);
  uint32_t child_max_key = FUNC1(child);
  uint32_t index = FUNC5(parent, child_max_key);

  uint32_t original_num_keys = *FUNC7(parent);
  *FUNC7(parent) = original_num_keys + 1;

  if (original_num_keys >= INTERNAL_NODE_MAX_CELLS) {
    FUNC10("Need to implement splitting internal node\n");
    FUNC0(EXIT_FAILURE);
  }

  uint32_t right_child_page_num = *FUNC8(parent);
  void* right_child = FUNC2(table->pager, right_child_page_num);

  if (child_max_key > FUNC1(right_child)) {
    /* Replace right child */
    *FUNC4(parent, original_num_keys) = right_child_page_num;
    *FUNC6(parent, original_num_keys) =
        FUNC1(right_child);
    *FUNC8(parent) = child_page_num;
  } else {
    /* Make room for the new cell */
    for (uint32_t i = original_num_keys; i > index; i--) {
      void* destination = FUNC3(parent, i);
      void* source = FUNC3(parent, i - 1);
      FUNC9(destination, source, INTERNAL_NODE_CELL_SIZE);
    }
    *FUNC4(parent, index) = child_page_num;
    *FUNC6(parent, index) = child_max_key;
  }
}