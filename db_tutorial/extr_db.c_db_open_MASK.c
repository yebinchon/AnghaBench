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
struct TYPE_7__ {scalar_t__ root_page_num; TYPE_2__* pager; } ;
typedef  TYPE_1__ Table ;
struct TYPE_8__ {scalar_t__ num_pages; } ;
typedef  TYPE_2__ Pager ;

/* Variables and functions */
 void* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_2__* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 

Table* FUNC5(const char* filename) {
  Pager* pager = FUNC3(filename);

  Table* table = FUNC2(sizeof(Table));
  table->pager = pager;
  table->root_page_num = 0;

  if (pager->num_pages == 0) {
    // New database file. Initialize page 0 as leaf node.
    void* root_node = FUNC0(pager, 0);
    FUNC1(root_node);
    FUNC4(root_node, true);
  }

  return table;
}