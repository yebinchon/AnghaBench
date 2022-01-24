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
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_4__ {scalar_t__ used; } ;
typedef  TYPE_1__ aofrwblock ;
struct TYPE_5__ {int /*<<< orphan*/  aof_rewrite_buf_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ server ; 

unsigned long FUNC3(void) {
    listNode *ln;
    listIter li;
    unsigned long size = 0;

    FUNC2(server.aof_rewrite_buf_blocks,&li);
    while((ln = FUNC0(&li))) {
        aofrwblock *block = FUNC1(ln);
        size += block->used;
    }
    return size;
}