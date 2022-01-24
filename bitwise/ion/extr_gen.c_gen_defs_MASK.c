#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ expr; scalar_t__ type; } ;
struct TYPE_13__ {int /*<<< orphan*/  block; } ;
struct TYPE_16__ {scalar_t__ kind; TYPE_2__ var; TYPE_1__ func; scalar_t__ is_incomplete; } ;
struct TYPE_15__ {scalar_t__ state; scalar_t__ reachable; int /*<<< orphan*/  type; TYPE_4__* decl; } ;
typedef  TYPE_3__ Sym ;
typedef  TYPE_4__ Decl ;

/* Variables and functions */
 scalar_t__ DECL_FUNC ; 
 scalar_t__ DECL_VAR ; 
 scalar_t__ REACHABLE_NATURAL ; 
 scalar_t__ SYM_RESOLVED ; 
 TYPE_3__** FUNC0 (TYPE_3__**) ; 
 char* gen_buf ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  inline_name ; 
 int FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 TYPE_3__** sorted_syms ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC15(void) {
    for (Sym **it = sorted_syms; it != FUNC0(sorted_syms); it++) {
        Sym *sym = *it;
        Decl *decl = sym->decl;
        if (sym->state != SYM_RESOLVED || !decl || decl->is_incomplete || sym->reachable != REACHABLE_NATURAL) {
            continue;
        }
        if (decl->kind == DECL_FUNC) {
            bool foreign = FUNC9(decl);;
            char *buf = gen_buf;
            if (foreign) {
                gen_buf = NULL;
            }
            if (FUNC7(decl, inline_name)) {
                FUNC6("INLINE");
            }
            if (FUNC7(decl, FUNC12("noinline"))) {
                FUNC6("NOINLINE");
            }
            FUNC2(decl);
            FUNC4(" ");
            FUNC3(decl->func.block);
            FUNC5();
            if (foreign) {
                gen_buf = buf;
            }
        } else if (decl->kind == DECL_VAR) {
            if (FUNC10(decl)) {
                FUNC6("THREADLOCAL");
            }
            if (decl->var.type && !FUNC11(decl->var.type)) {
                FUNC6("%s", FUNC14(decl->var.type, FUNC8(sym)));
            } else {
                FUNC6("%s", FUNC13(sym->type, FUNC8(sym)));
            }
            if (decl->var.expr) {
                FUNC4(" = ");
                FUNC1(decl->var.expr);
            }
            FUNC4(";");
        }
    }
}