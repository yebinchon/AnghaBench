#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int kind; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  SymKind ;
typedef  int /*<<< orphan*/  Sym ;
typedef  TYPE_1__ Decl ;

/* Variables and functions */
#define  DECL_CONST 134 
#define  DECL_ENUM 133 
#define  DECL_FUNC 132 
#define  DECL_STRUCT 131 
#define  DECL_TYPEDEF 130 
#define  DECL_UNION 129 
#define  DECL_VAR 128 
 int /*<<< orphan*/  SYM_CONST ; 
 int /*<<< orphan*/  SYM_FUNC ; 
 int /*<<< orphan*/  SYM_NONE ; 
 int /*<<< orphan*/  SYM_TYPE ; 
 int /*<<< orphan*/  SYM_VAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

Sym *FUNC4(Decl *decl) {
    SymKind kind = SYM_NONE;
    switch (decl->kind) {
    case DECL_STRUCT:
    case DECL_UNION:
    case DECL_TYPEDEF:
    case DECL_ENUM:
        kind = SYM_TYPE;
        break;
    case DECL_VAR:
        kind = SYM_VAR;
        break;
    case DECL_CONST:
        kind = SYM_CONST;
        break;
    case DECL_FUNC:
        kind = SYM_FUNC;
        break;
    default:
        FUNC0(0);
        break;
    }
    Sym *sym = FUNC3(kind, decl->name, decl);
    FUNC2(decl, sym);
    FUNC1(decl, sym);
    return sym;
}