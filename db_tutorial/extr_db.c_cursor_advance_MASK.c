#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ page_num; scalar_t__ cell_num; int end_of_table; TYPE_1__* table; } ;
struct TYPE_4__ {int /*<<< orphan*/  pager; } ;
typedef  TYPE_2__ Cursor ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* FUNC1 (void*) ; 
 scalar_t__* FUNC2 (void*) ; 

void FUNC3(Cursor* cursor) {
  uint32_t page_num = cursor->page_num;
  void* node = FUNC0(cursor->table->pager, page_num);

  cursor->cell_num += 1;
  if (cursor->cell_num >= (*FUNC2(node))) {
    /* Advance to next leaf node */
    uint32_t next_page_num = *FUNC1(node);
    if (next_page_num == 0) {
      /* This was rightmost leaf */
      cursor->end_of_table = true;
    } else {
      cursor->page_num = next_page_num;
      cursor->cell_num = 0;
    }
  }
}