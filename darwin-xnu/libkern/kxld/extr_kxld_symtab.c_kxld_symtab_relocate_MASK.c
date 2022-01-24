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
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_4__ {int /*<<< orphan*/  sectnum; } ;
typedef  int /*<<< orphan*/  KXLDSymtabIterator ;
typedef  int /*<<< orphan*/  const KXLDSymtab ;
typedef  TYPE_1__ KXLDSym ;
typedef  int /*<<< orphan*/  KXLDSect ;
typedef  int /*<<< orphan*/  KXLDArray ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kxld_sym_is_section ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC6(KXLDSymtab *symtab, const KXLDArray *sectarray)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSymtabIterator iter;
    KXLDSym *sym = NULL;
    const KXLDSect *sect = NULL;
    
    FUNC0(symtab);
    FUNC0(sectarray);

    FUNC4(&iter, symtab, kxld_sym_is_section, FALSE);

    while ((sym = FUNC3(&iter))) {
        sect = FUNC1(sectarray, sym->sectnum);
        FUNC5(sect, finish, rval=KERN_FAILURE);
        FUNC2(sym, sect);
    }

    rval = KERN_SUCCESS;

finish:

    return rval;
}