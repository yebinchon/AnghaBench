#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  typeid; } ;
typedef  TYPE_1__ Type ;
struct TYPE_15__ {int kind; } ;
struct TYPE_14__ {TYPE_3__* decl; } ;
typedef  TYPE_2__ Sym ;
typedef  TYPE_3__ Decl ;

/* Variables and functions */
#define  DECL_STRUCT 129 
#define  DECL_UNION 128 
 TYPE_2__** FUNC0 (TYPE_2__**) ; 
 int FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,...) ; 
 char* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 TYPE_2__** sorted_syms ; 
 TYPE_1__** tuple_types ; 

void FUNC7(void) {
    for (int i = 0; i < FUNC1(tuple_types); i++) {
        Type *type = tuple_types[i];
        if (FUNC6(type)) {
            FUNC2("typedef struct tuple%d tuple%d;", type->typeid, type->typeid);
        }
    }
    for (Sym **it = sorted_syms; it != FUNC0(sorted_syms); it++) {
        Sym *sym = *it;
        Decl *decl = sym->decl;
        if (!decl || !FUNC5(sym)) {
            continue;
        }
        if (FUNC4(decl)) {
            continue;
        }
        switch (decl->kind) {
        case DECL_STRUCT:
        case DECL_UNION: {
            const char *name = FUNC3(sym);
            FUNC2("typedef %s %s %s;", decl->kind == DECL_STRUCT ? "struct" : "union", name, name);
            break;
        }
        default:
            // Do nothing.
            break;
        }
    }
}