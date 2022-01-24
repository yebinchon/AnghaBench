#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* callout ) (int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FS_BUFFER_CACHE_GC_CALLOUTS_MAX_SIZE ; 
 int /*<<< orphan*/  buf_gc_callout ; 
 TYPE_1__* fs_callouts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int all)
{
	FUNC0(buf_gc_callout);
	for(int i = 0; i < FS_BUFFER_CACHE_GC_CALLOUTS_MAX_SIZE; i++) {
		if (fs_callouts[i].callout != NULL) {
			fs_callouts[i].callout(all, fs_callouts[i].context);
		}
	}
	FUNC1(buf_gc_callout);
}