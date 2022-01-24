#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_9__ {scalar_t__ nitems; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_6__ syms; } ;
typedef  TYPE_1__ KXLDSymtab ;
typedef  TYPE_2__ KXLDSym ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_6__*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 

KXLDSym * 
FUNC2(const KXLDSymtab *symtab, const char *name)
{
    KXLDSym *sym = NULL;
    u_int i = 0;

    for (i = 0; i < symtab->syms.nitems; ++i) {
        sym = FUNC0(&symtab->syms, i);

        if (FUNC1(sym->name, name)) {
            return sym;
        }
    }
    
    return NULL;
}