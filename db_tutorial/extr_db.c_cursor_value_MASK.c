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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  cell_num; TYPE_1__* table; int /*<<< orphan*/  page_num; } ;
struct TYPE_4__ {int /*<<< orphan*/  pager; } ;
typedef  TYPE_2__ Cursor ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 

void* FUNC2(Cursor* cursor) {
  uint32_t page_num = cursor->page_num;
  void* page = FUNC0(cursor->table->pager, page_num);
  return FUNC1(page, cursor->cell_num);
}