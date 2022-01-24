#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_15__ {int /*<<< orphan*/  type; } ;
struct TYPE_14__ {int /*<<< orphan*/  type; } ;
struct TYPE_17__ {scalar_t__ kind; scalar_t__ is_incomplete; int /*<<< orphan*/  pos; TYPE_2__ enum_decl; TYPE_1__ typedef_decl; } ;
struct TYPE_16__ {scalar_t__ state; int kind; int /*<<< orphan*/  type; int /*<<< orphan*/  val; int /*<<< orphan*/  home_package; TYPE_4__* decl; scalar_t__ reachable; } ;
typedef  TYPE_3__ Sym ;
typedef  int /*<<< orphan*/  Package ;
typedef  TYPE_4__ Decl ;

/* Variables and functions */
 scalar_t__ DECL_ENUM ; 
 scalar_t__ DECL_STRUCT ; 
 scalar_t__ DECL_TYPEDEF ; 
 scalar_t__ DECL_UNION ; 
#define  SYM_CONST 132 
#define  SYM_FUNC 131 
#define  SYM_PACKAGE 130 
 scalar_t__ SYM_RESOLVED ; 
 scalar_t__ SYM_RESOLVING ; 
#define  SYM_TYPE 129 
 scalar_t__ SYM_UNRESOLVED ; 
#define  SYM_VAR 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ reachable_phase ; 
 int /*<<< orphan*/  reachable_syms ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sorted_syms ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/ * type_int ; 

void FUNC15(Sym *sym) {
    if (sym->state == SYM_RESOLVED) {
        return;
    } else if (sym->state == SYM_RESOLVING) {
        FUNC3(sym->decl->pos, "Cyclic dependency");
        return;
    }
    FUNC0(sym->state == SYM_UNRESOLVED);
    FUNC0(!sym->reachable);
    if (!FUNC6(sym)) {
        FUNC1(reachable_syms, sym);
        sym->reachable = reachable_phase;
    }
    sym->state = SYM_RESOLVING;
    Decl *decl = sym->decl;
    Package *old_package = FUNC2(sym->home_package);
    switch (sym->kind) {
    case SYM_TYPE:
        if (decl && decl->kind == DECL_TYPEDEF) {
            sym->type = FUNC12(decl->typedef_decl.type, FUNC4(decl));
        } else if (decl->kind == DECL_ENUM) {
            Type *base = decl->enum_decl.type ? FUNC11(decl->enum_decl.type) : type_int;
            if (!FUNC5(base)) {
                FUNC3(decl->pos, "Base type of enum must be integer type");
            }
            sym->type = FUNC13(sym, base);
        } else {
            sym->type = FUNC14(sym);
        }
        break;
    case SYM_VAR:
        sym->type = FUNC10(decl);
        break;
    case SYM_CONST:
        sym->type = FUNC8(decl, &sym->val);
        break;
    case SYM_FUNC:
        sym->type = FUNC9(decl);
        break;
    case SYM_PACKAGE:
        // Do nothing
        break;
    default:
        FUNC0(0);
        break;
    }
    FUNC7(old_package);
    sym->state = SYM_RESOLVED;
    if (decl->is_incomplete || (decl->kind != DECL_STRUCT && decl->kind != DECL_UNION)) {
        FUNC1(sorted_syms, sym);
    }
}