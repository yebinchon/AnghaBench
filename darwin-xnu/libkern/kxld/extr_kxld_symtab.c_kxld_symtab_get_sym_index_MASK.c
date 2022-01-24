#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_3__ {int /*<<< orphan*/  syms; } ;
typedef  TYPE_1__ KXLDSymtab ;
typedef  int /*<<< orphan*/  KXLDSym ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t 
FUNC2(const KXLDSymtab *symtab, const KXLDSym *sym,
    u_int *symindex)
{
    kern_return_t rval = KERN_FAILURE;

    rval = FUNC0(&symtab->syms, sym, symindex);
    FUNC1(rval, finish);

    rval = KERN_SUCCESS;

finish:
    return rval;
}