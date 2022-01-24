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
typedef  size_t u_int ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  KXLDSymtabIterator ;
typedef  int /*<<< orphan*/  KXLDSymtab ;
typedef  TYPE_1__ KXLDSym ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 char const* KXLD_KMOD_INFO_SYMBOL ; 
 char const* KXLD_OPERATOR_DELETE_ARRAY_SYMBOL ; 
 char const* KXLD_OPERATOR_DELETE_SYMBOL ; 
 char const* KXLD_OPERATOR_NEW_ARRAY_SYMBOL ; 
 char const* KXLD_OPERATOR_NEW_SYMBOL ; 
 size_t FUNC0 (char const**) ; 
 int /*<<< orphan*/  kxld_sym_is_exported ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC5(KXLDSymtab *symtab)
{
    const char *private_symbols[] = {
        KXLD_KMOD_INFO_SYMBOL,
        KXLD_OPERATOR_NEW_SYMBOL,
        KXLD_OPERATOR_NEW_ARRAY_SYMBOL,
        KXLD_OPERATOR_DELETE_SYMBOL,
        KXLD_OPERATOR_DELETE_ARRAY_SYMBOL
    };
    KXLDSymtabIterator iter;
    KXLDSym *sym = NULL;
    const char *name = NULL;
    u_int i = 0;
    
    FUNC3(&iter, symtab, kxld_sym_is_exported, FALSE);
    while ((sym = FUNC2(&iter))) {
        for (i = 0; i < FUNC0(private_symbols); ++i) {
            name = private_symbols[i];
            if (!FUNC4(sym->name, name)) {
                continue;
            }

            FUNC1(sym);
        }
    }
}