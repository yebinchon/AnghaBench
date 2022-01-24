#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_9__ {size_t nitems; } ;
struct TYPE_8__ {int /*<<< orphan*/  defined_cxx_symbols_by_value; int /*<<< orphan*/ * kext; int /*<<< orphan*/  vtables_by_name; int /*<<< orphan*/  defined_symbols_by_name; TYPE_3__ dependencies; int /*<<< orphan*/  obsolete_symbols_by_name; } ;
struct TYPE_7__ {char const* kext_name; char const* interface_name; scalar_t__ is_direct_dependency; int /*<<< orphan*/  interface_size; int /*<<< orphan*/ * interface; int /*<<< orphan*/  kext_size; int /*<<< orphan*/ * kext; } ;
typedef  int /*<<< orphan*/  KXLDObject ;
typedef  int /*<<< orphan*/  KXLDKext ;
typedef  TYPE_1__ KXLDDependency ;
typedef  TYPE_2__ KXLDContext ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC7(KXLDContext *context,
                  u_char *file,
                  u_long size,
                  const char *name,
                  KXLDDependency *dependencies,
                  u_int ndependencies)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDKext *kext = NULL;
    KXLDObject *kext_object = NULL;
    KXLDObject *interface_object = NULL;
    u_int i = 0;
    
    /* Create a kext object for each dependency.  If it's a direct dependency,
     * export its symbols by name by value.  If it's indirect, just export the
     * C++ symbols by value.
     */
    for (i = 0; i < ndependencies; ++i) {
        kext = FUNC1(&context->dependencies, i);
        kext_object = NULL;
        interface_object = NULL;
        
        kext_object = FUNC0(context, dependencies[i].kext,
                                          dependencies[i].kext_size, dependencies[i].kext_name);
        FUNC5(kext_object, finish, rval=KERN_FAILURE);
        
        if (dependencies[i].interface) {
            interface_object = FUNC0(context,
                                                   dependencies[i].interface, dependencies[i].interface_size,
                                                   dependencies[i].interface_name);
            FUNC5(interface_object, finish, rval=KERN_FAILURE);
        }
        
        rval = FUNC4(kext, kext_object, interface_object);
        FUNC6(rval, finish);
        
        if (dependencies[i].is_direct_dependency) {
            rval = FUNC2(kext,
                                            &context->defined_symbols_by_name,
                                            &context->obsolete_symbols_by_name,
                                            &context->defined_cxx_symbols_by_value);
            FUNC6(rval, finish);
        } else {
            rval = FUNC2(kext,
                                            /* defined_symbols */ NULL, /* obsolete_symbols */ NULL,
                                            &context->defined_cxx_symbols_by_value);
            FUNC6(rval, finish);
        }
    }
    
    /* Export the vtables for all of the dependencies. */
    for (i = 0; i < context->dependencies.nitems; ++i) {
        kext = FUNC1(&context->dependencies, i);
        
        rval = FUNC3(kext,
                                        &context->defined_cxx_symbols_by_value,
                                        &context->defined_symbols_by_name,
                                        &context->vtables_by_name);
        FUNC6(rval, finish);
    }
    
    /* Create a kext object for the kext we're linking and export its locally
     * defined C++ symbols.
     */
    kext_object = FUNC0(context, file, size, name);
    FUNC5(kext_object, finish, rval=KERN_FAILURE);
    
    rval = FUNC4(context->kext, kext_object, /* interface */ NULL);
    FUNC6(rval, finish);
    
    rval = FUNC2(context->kext,
                                    /* defined_symbols */ NULL, /* obsolete_symbols */ NULL, 
                                    &context->defined_cxx_symbols_by_value);
    FUNC6(rval, finish);
    
    rval = KERN_SUCCESS;
finish:
    return rval;
}