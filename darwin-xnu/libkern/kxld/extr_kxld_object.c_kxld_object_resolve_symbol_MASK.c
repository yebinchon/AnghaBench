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
typedef  int /*<<< orphan*/  kxld_addr_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  KXLDSym ;
typedef  int /*<<< orphan*/  KXLDObject ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t 
FUNC4(KXLDObject *object, 
    const KXLDSym *sym, kxld_addr_t addr)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSym *resolved_sym = NULL;

    resolved_sym = FUNC0(object, sym);
    FUNC2(resolved_sym, finish, rval=KERN_FAILURE);

    rval = FUNC1(resolved_sym, addr);
    FUNC3(rval, finish);

    rval = KERN_SUCCESS;
finish:
    return rval;
}