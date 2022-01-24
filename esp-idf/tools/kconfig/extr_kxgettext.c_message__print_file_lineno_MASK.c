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
struct message {char* option; struct file_line* files; } ;
struct file_line {char* file; int lineno; struct file_line* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void FUNC2(struct message *self)
{
	struct file_line *fl = self->files;

	FUNC1('\n');
	if (self->option != NULL)
		FUNC0("# %s:00000\n", self->option);

	FUNC0("#: %s:%d", fl->file, fl->lineno);
	fl = fl->next;

	while (fl != NULL) {
		FUNC0(", %s:%d", fl->file, fl->lineno);
		fl = fl->next;
	}

	FUNC1('\n');
}