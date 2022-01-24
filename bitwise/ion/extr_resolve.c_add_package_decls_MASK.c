#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ name; int num_args; TYPE_1__* args; } ;
struct TYPE_11__ {scalar_t__ kind; TYPE_6__ note; int /*<<< orphan*/  pos; } ;
struct TYPE_10__ {scalar_t__ kind; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {size_t num_decls; TYPE_4__** decls; } ;
struct TYPE_8__ {TYPE_3__* expr; } ;
typedef  TYPE_2__ Package ;
typedef  TYPE_3__ Expr ;
typedef  TYPE_4__ Decl ;

/* Variables and functions */
 scalar_t__ DECL_IMPORT ; 
 scalar_t__ DECL_NOTE ; 
 scalar_t__ EXPR_NAME ; 
 int /*<<< orphan*/  decl_note_names ; 
 scalar_t__ declare_note_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  flag_lazy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__) ; 
 scalar_t__ static_assert_name ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void FUNC6(Package *package) {
    for (size_t i = 0; i < package->num_decls; i++) {
        Decl *decl = package->decls[i];
        if (decl->kind == DECL_NOTE) {
            if (!FUNC1(&decl_note_names, decl->note.name)) {
                FUNC5(decl->pos, "Unknown declaration #directive '%s'", decl->note.name);
            }
            if (decl->note.name == declare_note_name) {
                if (decl->note.num_args != 1) {
                    FUNC0(decl->pos, "#declare_note takes 1 argument");
                }
                Expr *arg = decl->note.args[0].expr;
                if (arg->kind != EXPR_NAME) {
                    FUNC0(decl->pos, "#declare_note argument must be name");
                }
                FUNC2(&decl_note_names, arg->name, (void *)1);
            } else if (decl->note.name == static_assert_name) {
                // TODO: decide how to handle top-level static asserts wrt laziness/tree shaking
                if (!flag_lazy) {
                    FUNC3(decl->note);
                }
            }
        } else if (decl->kind == DECL_IMPORT) {
            // Add to list of imports
        } else {
            FUNC4(decl);
        }
    }
}