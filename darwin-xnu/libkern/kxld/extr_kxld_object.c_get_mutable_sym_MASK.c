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
struct TYPE_3__ {int /*<<< orphan*/  symtab; } ;
typedef  int /*<<< orphan*/  const KXLDSym ;
typedef  TYPE_1__ KXLDObject ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static KXLDSym *
FUNC4(const KXLDObject *object, const KXLDSym *sym)
{
    KXLDSym *rval = NULL;
    kern_return_t result = KERN_FAILURE;
    u_int i = 0;

    result = FUNC0(object->symtab, sym, &i);
    FUNC3(result, finish);

    rval = FUNC1(object->symtab, i);
    FUNC2(rval == sym, finish, rval=NULL);

finish:
    return rval;
}