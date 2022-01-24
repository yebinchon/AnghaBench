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
struct TYPE_2__ {int count; } ;
struct func {char* name; TYPE_1__ count; struct func* link; } ;
struct file {char* name; struct func* funcs; } ;

/* Variables and functions */
 struct file* FUNC0 (char*) ; 

int FUNC1(char *name, char *file) {
	static struct file *cursor;

	if (cursor == 0 || cursor->name != file)
		cursor = FUNC0(file);
	if (cursor) {
		struct func *p;
		for (p = cursor->funcs; p; p = p->link)
			if (p->name == name)
				return p->count.count;
	}
	return -1;
}