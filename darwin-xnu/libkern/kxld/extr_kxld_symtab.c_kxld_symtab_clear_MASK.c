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
struct TYPE_4__ {scalar_t__ name_index_initialized; scalar_t__ cxx_index_initialized; scalar_t__ strsize; int /*<<< orphan*/ * strings; int /*<<< orphan*/  name_index; int /*<<< orphan*/  cxx_index; int /*<<< orphan*/  syms; } ;
typedef  TYPE_1__ KXLDSymtab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void 
FUNC3(KXLDSymtab *symtab)
{
    FUNC0(symtab);

    FUNC1(&symtab->syms);
    FUNC2(&symtab->cxx_index);
    FUNC2(&symtab->name_index);
    symtab->strings = NULL;
    symtab->strsize = 0;
    symtab->cxx_index_initialized = 0;
    symtab->name_index_initialized = 0;
}