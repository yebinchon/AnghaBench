#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ num_params; scalar_t__ ret_type; scalar_t__ has_varargs; TYPE_2__* params; } ;
struct TYPE_8__ {scalar_t__ kind; TYPE_1__ func; int /*<<< orphan*/  pos; } ;
struct TYPE_7__ {char* name; scalar_t__ type; } ;
typedef  TYPE_2__ FuncParam ;
typedef  TYPE_3__ Decl ;

/* Variables and functions */
 scalar_t__ DECL_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8(Decl *decl) {
    FUNC0(decl->kind == DECL_FUNC);
    char *result = NULL;
    FUNC1(result, "%s(", FUNC4(decl));
    if (decl->func.num_params == 0) {
        FUNC1(result, "void");
    } else {
        for (size_t i = 0; i < decl->func.num_params; i++) {
            FuncParam param = decl->func.params[i];
            if (i != 0) {
                FUNC1(result, ", ");
            }
            FUNC1(result, "%s", FUNC7(FUNC6(FUNC5(param.type)), param.name));
        }
    }
    if (decl->func.has_varargs) {
        FUNC1(result, ", ...");
    }
    FUNC1(result, ")");
    FUNC2(decl->pos);
    if (decl->func.ret_type) {
        FUNC3("%s", FUNC7(FUNC6(FUNC5(decl->func.ret_type)), result));
    } else {
        FUNC3("void %s", result);
    }
}