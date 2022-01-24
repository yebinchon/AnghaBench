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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  kxld_addr_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  KXLDReloc ;
typedef  int /*<<< orphan*/  KXLDArray ;

/* Variables and functions */
 scalar_t__ KERN_FAILURE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

KXLDReloc *
FUNC2(const KXLDArray *relocs, kxld_addr_t offset)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDReloc *reloc = NULL;
    u_int i = 0;

    rval = FUNC1(relocs, offset, &i);
    if (rval) goto finish;

    reloc = FUNC0(relocs, i);
    
finish:
    return reloc;
}