#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  kxld_addr_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_12__ {scalar_t__ nitems; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  name_index; TYPE_7__ syms; } ;
typedef  TYPE_1__ KXLDSymtab ;
typedef  TYPE_2__ KXLDSym ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  finish ; 
 TYPE_2__* FUNC0 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC5(KXLDSymtab *symtab, char *name, kxld_addr_t link_addr,
    KXLDSym **symout)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSym *sym = NULL;
    u_int symindex = symtab->syms.nitems;

    rval = FUNC1(&symtab->syms, symindex + 1);
    FUNC4(rval, finish);

    sym = FUNC0(&symtab->syms, symindex);
    FUNC3(sym, name, link_addr);

    rval = FUNC2(&symtab->name_index, sym->name, sym);
    FUNC4(rval, finish);

    rval = KERN_SUCCESS;
    *symout = sym;
    
finish:
    return rval;
}