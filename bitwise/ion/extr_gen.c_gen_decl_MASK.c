#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  type; } ;
struct TYPE_15__ {int /*<<< orphan*/  type; } ;
struct TYPE_14__ {int /*<<< orphan*/  type; } ;
struct TYPE_13__ {int /*<<< orphan*/  type; int /*<<< orphan*/  expr; } ;
struct TYPE_17__ {int kind; TYPE_4__ enum_decl; TYPE_3__ typedef_decl; int /*<<< orphan*/  type; TYPE_2__ var; TYPE_1__ const_decl; int /*<<< orphan*/  pos; struct TYPE_17__* decl; } ;
typedef  TYPE_5__ Sym ;
typedef  TYPE_5__ Decl ;

/* Variables and functions */
#define  DECL_CONST 135 
#define  DECL_ENUM 134 
#define  DECL_FUNC 133 
#define  DECL_IMPORT 132 
#define  DECL_STRUCT 131 
#define  DECL_TYPEDEF 130 
#define  DECL_UNION 129 
#define  DECL_VAR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ,char*) ; 

void FUNC14(Sym *sym) {
    Decl *decl = sym->decl;
    if (!decl || FUNC9(decl)) {
        return;
    }
    FUNC4(decl->pos);
    switch (decl->kind) {
    case DECL_CONST:
        FUNC7("#define %s (", FUNC8(sym));
        if (decl->const_decl.type) {
            FUNC5("(%s)(", FUNC13(decl->const_decl.type, ""));
        }
        FUNC2(decl->const_decl.expr);
        if (decl->const_decl.type) {
            FUNC5(")");
        }
        FUNC5(")");
        break;
    case DECL_VAR:
        if (FUNC10(decl)) {
            FUNC7("THREADLOCAL");
        }
        FUNC7("extern ");
        if (decl->var.type && !FUNC11(decl->var.type)) {
            FUNC5("%s", FUNC13(decl->var.type, FUNC8(sym)));
        } else {
            FUNC5("%s", FUNC12(sym->type, FUNC8(sym)));
        }
        FUNC5(";");
        break;
    case DECL_FUNC:
        FUNC3(decl);
        FUNC5(";");
        break;
    case DECL_STRUCT:
    case DECL_UNION:
        FUNC1(decl);
        break;
    case DECL_TYPEDEF:
        FUNC7("typedef %s;", FUNC13(decl->typedef_decl.type, FUNC8(sym)));
        break;
    case DECL_ENUM:
        if (decl->enum_decl.type) {
            FUNC7("typedef %s;", FUNC13(decl->enum_decl.type, FUNC8(decl)));
        } else {
            FUNC7("typedef int %s;", FUNC8(decl));
        }
        break;
    case DECL_IMPORT:
        // Do nothing
        break;
    default:
        FUNC0(0);
        break;
    }
    FUNC6();
}