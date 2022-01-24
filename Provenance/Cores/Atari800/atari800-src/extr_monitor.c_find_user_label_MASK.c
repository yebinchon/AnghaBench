#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ symtable_rec ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* symtable_user ; 
 int symtable_user_size ; 

__attribute__((used)) static symtable_rec *FUNC1(const char *name)
{
	int i;
	for (i = 0; i < symtable_user_size; i++) {
		if (FUNC0(symtable_user[i].name, name) == 0)
			return &symtable_user[i];
	}
	return NULL;
}