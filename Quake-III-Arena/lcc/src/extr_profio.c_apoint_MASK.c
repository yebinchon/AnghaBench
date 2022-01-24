#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct file {int size; int count; struct count* counts; } ;
struct count {int x; int y; int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERM ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 struct file* FUNC1 (char*) ; 
 void* FUNC2 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int i, char *file, int x, int y, int count) {
	struct file *p = FUNC1(file);

	FUNC0(p);
	if (i >= p->size) {
		int j;
		if (p->size == 0) {
			p->size = i >= 200 ? 2*i : 200;
			p->counts = FUNC2(p->size, sizeof *p->counts, PERM);
		} else {
			struct count *new;
			p->size = 2*i;
			new = FUNC2(p->size, sizeof *new, PERM);
			for (j = 0; j < p->count; j++)
				new[j] = p->counts[j];
			p->counts = new;
		}
		for (j = p->count; j < p->size; j++) {
			static struct count z;
			p->counts[j] = z;
		}
	}
	p->counts[i].x = x;
	p->counts[i].y = y;
	p->counts[i].count += count;
	if (i >= p->count)
		p->count = i + 1;
}