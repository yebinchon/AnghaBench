#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_6__ {int /*<<< orphan*/  kext; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  KXLDSymtabIterator ;
typedef  TYPE_1__ KXLDSym ;
typedef  TYPE_2__ KXLDKext ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  kKxldLogErr ; 
 int /*<<< orphan*/  kKxldLogLinking ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kxld_sym_is_unresolved ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC7(KXLDKext *kext)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSymtabIterator iter;
    KXLDSym *sym = NULL;
    u_int error = FALSE;
    char *demangled_name = NULL;
    size_t demangled_length = 0;
    
    /* Check for any unresolved symbols */
    FUNC5(&iter, FUNC3(kext->kext), 
        kxld_sym_is_unresolved, FALSE);
    while ((sym = FUNC4(&iter))) {
        if (!error) {
            error = TRUE;
            FUNC2(kKxldLogLinking, kKxldLogErr, 
                "The following symbols are unresolved for this kext:");
        }
        FUNC2(kKxldLogLinking, kKxldLogErr, "\t%s", 
            FUNC0(sym->name, &demangled_name, &demangled_length));
    }
    FUNC6(error, finish, rval=KERN_FAILURE);

    rval = KERN_SUCCESS;

finish:
    if (demangled_name) FUNC1(demangled_name, demangled_length);
    return rval;
}