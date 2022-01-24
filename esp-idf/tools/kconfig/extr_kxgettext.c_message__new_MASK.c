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
struct message {char* option; struct message* files; int /*<<< orphan*/ * next; int /*<<< orphan*/ * msg; } ;

/* Variables and functions */
 struct message* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct message*) ; 
 struct message* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

__attribute__((used)) static struct message *FUNC4(const char *msg, char *option,
				    const char *file, int lineno)
{
	struct message *self = FUNC2(sizeof(*self));

	if (self == NULL)
		goto out;

	self->files = FUNC0(file, lineno);
	if (self->files == NULL)
		goto out_fail;

	self->msg = FUNC3(msg);
	if (self->msg == NULL)
		goto out_fail_msg;

	self->option = option;
	self->next = NULL;
out:
	return self;
out_fail_msg:
	FUNC1(self->files);
out_fail:
	FUNC1(self);
	self = NULL;
	goto out;
}