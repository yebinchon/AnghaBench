#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ cell_num; int /*<<< orphan*/  page_num; TYPE_1__* table; } ;
struct TYPE_5__ {int /*<<< orphan*/  pager; } ;
typedef  int /*<<< orphan*/  Row ;
typedef  TYPE_2__ Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  LEAF_NODE_CELL_SIZE ; 
 scalar_t__ LEAF_NODE_MAX_CELLS ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__) ; 
 scalar_t__* FUNC2 (void*,scalar_t__) ; 
 int* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC8(Cursor* cursor, uint32_t key, Row* value) {
  void* node = FUNC0(cursor->table->pager, cursor->page_num);

  uint32_t num_cells = *FUNC3(node);
  if (num_cells >= LEAF_NODE_MAX_CELLS) {
    // Node full
    FUNC4(cursor, key, value);
    return;
  }

  if (cursor->cell_num < num_cells) {
    // Make room for new cell
    for (uint32_t i = num_cells; i > cursor->cell_num; i--) {
      FUNC6(FUNC1(node, i), FUNC1(node, i - 1),
             LEAF_NODE_CELL_SIZE);
    }
  }

  *(FUNC3(node)) += 1;
  *(FUNC2(node, cursor->cell_num)) = key;
  FUNC7(value, FUNC5(node, cursor->cell_num));
}