#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int32_t ;
struct TYPE_6__ {int /*<<< orphan*/  pager; } ;
struct TYPE_5__ {int page_num; int cell_num; TYPE_3__* table; } ;
typedef  int /*<<< orphan*/  Row ;
typedef  TYPE_1__ Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  LEAF_NODE_CELL_SIZE ; 
 int LEAF_NODE_LEFT_SPLIT_COUNT ; 
 int LEAF_NODE_MAX_CELLS ; 
 int LEAF_NODE_RIGHT_SPLIT_COUNT ; 
 void FUNC0 (TYPE_3__*,int) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int) ; 
 scalar_t__ FUNC6 (void*) ; 
 void* FUNC7 (void*,int) ; 
 int* FUNC8 (void*,int) ; 
 int* FUNC9 (void*) ; 
 int* FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*,int) ; 
 int /*<<< orphan*/  FUNC12 (void*,void*,int /*<<< orphan*/ ) ; 
 int* FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void*,int,int) ; 

void FUNC16(Cursor* cursor, uint32_t key, Row* value) {
  /*
  Create a new node and move half the cells over.
  Insert the new value in one of the two nodes.
  Update parent or create a new parent.
  */

  void* old_node = FUNC2(cursor->table->pager, cursor->page_num);
  uint32_t old_max = FUNC1(old_node);
  uint32_t new_page_num = FUNC3(cursor->table->pager);
  void* new_node = FUNC2(cursor->table->pager, new_page_num);
  FUNC4(new_node);
  *FUNC13(new_node) = *FUNC13(old_node);
  *FUNC9(new_node) = *FUNC9(old_node);
  *FUNC9(old_node) = new_page_num;

  /*
  All existing keys plus new key should should be divided
  evenly between old (left) and new (right) nodes.
  Starting from the right, move each key to correct position.
  */
  for (int32_t i = LEAF_NODE_MAX_CELLS; i >= 0; i--) {
    void* destination_node;
    if (i >= LEAF_NODE_LEFT_SPLIT_COUNT) {
      destination_node = new_node;
    } else {
      destination_node = old_node;
    }
    uint32_t index_within_node = i % LEAF_NODE_LEFT_SPLIT_COUNT;
    void* destination = FUNC7(destination_node, index_within_node);

    if (i == cursor->cell_num) {
      FUNC14(value,
                    FUNC11(destination_node, index_within_node));
      *FUNC8(destination_node, index_within_node) = key;
    } else if (i > cursor->cell_num) {
      FUNC12(destination, FUNC7(old_node, i - 1), LEAF_NODE_CELL_SIZE);
    } else {
      FUNC12(destination, FUNC7(old_node, i), LEAF_NODE_CELL_SIZE);
    }
  }

  /* Update cell count on both leaf nodes */
  *(FUNC10(old_node)) = LEAF_NODE_LEFT_SPLIT_COUNT;
  *(FUNC10(new_node)) = LEAF_NODE_RIGHT_SPLIT_COUNT;

  if (FUNC6(old_node)) {
    return FUNC0(cursor->table, new_page_num);
  } else {
    uint32_t parent_page_num = *FUNC13(old_node);
    uint32_t new_max = FUNC1(old_node);
    void* parent = FUNC2(cursor->table->pager, parent_page_num);

    FUNC15(parent, old_max, new_max);
    FUNC5(cursor->table, parent_page_num, new_page_num);
    return;
  }
}