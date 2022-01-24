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
struct message {struct file_line* files; } ;
struct file_line {struct file_line* next; } ;

/* Variables and functions */
 struct file_line* FUNC0 (char const*,int) ; 

__attribute__((used)) static int FUNC1(struct message *self, const char *file,
				  int lineno)
{
	int rc = -1;
	struct file_line *fl = FUNC0(file, lineno);

	if (fl == NULL)
		goto out;

	fl->next    = self->files;
	self->files = fl;
	rc = 0;
out:
	return rc;
}