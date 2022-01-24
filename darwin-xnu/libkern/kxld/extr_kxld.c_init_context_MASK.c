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
typedef  int u_int ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_3__ {int /*<<< orphan*/  vtables_by_name; int /*<<< orphan*/  obsolete_symbols_by_name; int /*<<< orphan*/  defined_cxx_symbols_by_value; int /*<<< orphan*/  defined_symbols_by_name; int /*<<< orphan*/  dependencies; int /*<<< orphan*/  objects; } ;
typedef  TYPE_1__ KXLDContext ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kxld_dict_kxldaddr_cmp ; 
 int /*<<< orphan*/  kxld_dict_kxldaddr_hash ; 
 int /*<<< orphan*/  kxld_dict_string_cmp ; 
 int /*<<< orphan*/  kxld_dict_string_hash ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC5(KXLDContext *context, u_int ndependencies)
{
    kern_return_t rval = KERN_FAILURE;

    /* Create an array of objects large enough to hold an object
     * for every dependency, an interface for each dependency, and a kext. */
    rval = FUNC0(&context->objects,
        FUNC3(), 2 * ndependencies + 1);
    FUNC4(rval, finish);

    rval = FUNC0(&context->dependencies, 
        FUNC2(), ndependencies);
    FUNC4(rval, finish);

    rval = FUNC1(&context->defined_symbols_by_name, 
        kxld_dict_string_hash, kxld_dict_string_cmp, 0);
    FUNC4(rval, finish);

    rval = FUNC1(&context->defined_cxx_symbols_by_value, 
        kxld_dict_kxldaddr_hash, kxld_dict_kxldaddr_cmp, 0);
    FUNC4(rval, finish);

    rval = FUNC1(&context->obsolete_symbols_by_name, 
        kxld_dict_string_hash, kxld_dict_string_cmp, 0);
    FUNC4(rval, finish);

    rval = FUNC1(&context->vtables_by_name, kxld_dict_string_hash,
        kxld_dict_string_cmp, 0);
    FUNC4(rval, finish);

    rval = KERN_SUCCESS;
finish:
    return rval;
}