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
struct file_list {char* f_fn; struct file_list* f_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct file_list* ftab ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

struct file_list *
FUNC2(char *file)
{
	struct file_list *fp;

	for (fp = ftab ; fp != 0; fp = fp->f_next) {
		if (FUNC0(FUNC1(fp->f_fn), FUNC1(file)))
			return (fp);
	}
	return (0);
}