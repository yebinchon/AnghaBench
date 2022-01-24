#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name_index; int /*<<< orphan*/  cxx_index; int /*<<< orphan*/  syms; } ;
typedef  TYPE_1__ KXLDSymtab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(KXLDSymtab *symtab)
{
    FUNC1(symtab);

    FUNC2(&symtab->syms);
    FUNC3(&symtab->cxx_index);
    FUNC3(&symtab->name_index);
    FUNC0(symtab, sizeof(*symtab));
}