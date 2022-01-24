#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int num_fields; TYPE_1__* fields; } ;
struct TYPE_20__ {struct TYPE_20__* base; TYPE_2__ aggregate; } ;
typedef  TYPE_4__ Type ;
struct TYPE_19__ {int num_args; TYPE_6__** args; } ;
struct TYPE_22__ {int /*<<< orphan*/  pos; TYPE_3__ call; } ;
struct TYPE_21__ {scalar_t__ name; } ;
struct TYPE_17__ {TYPE_4__* type; } ;
typedef  TYPE_5__ Sym ;
typedef  TYPE_6__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 TYPE_4__* FUNC4 (TYPE_6__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*) ; 
 TYPE_4__* FUNC9 (TYPE_4__*) ; 

void FUNC10(Sym *sym, Expr *expr) {
    Type *type = FUNC4(expr->call.args[0]);
    Type *base = FUNC6(type) ? FUNC9(type->base) : 0;
    Type *key = base && FUNC5(base) && base->aggregate.num_fields == 2 ? base->aggregate.fields[0].type : 0;
    Type *val = base && FUNC5(base) && base->aggregate.num_fields == 2 ? base->aggregate.fields[1].type : 0;
    if (sym->name == FUNC7("va_copy") || sym->name == FUNC7("va_start") || sym->name == FUNC7("va_end")) {
        FUNC3("%s(", sym->name);
        for (int i = 0; i < expr->call.num_args; i++) {
            if (i != 0) {
                FUNC3(", ");
            }
            FUNC2(expr->call.args[i]);
        }
        FUNC3(")");
    } else if (sym->name == FUNC7("va_arg")) {
        FUNC0(expr->call.num_args == 2);
        FUNC2(expr->call.args[1]);
        FUNC3(" = va_arg(");
        FUNC2(expr->call.args[0]);
        Type *type = FUNC4(expr->call.args[1]);
        FUNC3(", %s)", FUNC8(type, ""));
    } else if (sym->name == FUNC7("apush") || sym->name == FUNC7("aputv") || sym->name == FUNC7("adelv") ||
        sym->name == FUNC7("agetvi") || sym->name == FUNC7("agetvp") || sym->name == FUNC7("agetv") ||
        sym->name == FUNC7("asetcap") || sym->name == FUNC7("afit") || sym->name == FUNC7("acat") ||
        sym->name == FUNC7("adeli") || sym->name == FUNC7("aindexv") || sym->name == FUNC7("asetlen")) {
        // (t, a, v)
        FUNC3("%s(%s, (", sym->name, FUNC8(base, ""));
        FUNC2(expr->call.args[0]);
        FUNC3("), (");
        FUNC2(expr->call.args[1]);
        FUNC3("))");
    } else if (sym->name == FUNC7("adefault")) {
        // (t, tv, a, v)
        FUNC3("%s(%s, %s, (", sym->name, FUNC8(base, ""), FUNC8(val, ""));
        FUNC2(expr->call.args[0]);
        FUNC3("), (");
        FUNC2(expr->call.args[1]);
        FUNC3("))");
    } else if (sym->name == FUNC7("afill")) {
        // (t, a, v, n)
        FUNC3("%s(%s, (", sym->name, FUNC8(base, ""));
        FUNC2(expr->call.args[0]);
        FUNC3("), (");
        FUNC2(expr->call.args[1]);
        FUNC3("), (");
        FUNC2(expr->call.args[2]);
        FUNC3("))");
    } else if (sym->name == FUNC7("acatn") || sym->name == FUNC7("adeln")) {
        FUNC3("%s(%s, (", sym->name, FUNC8(base, ""));
        FUNC2(expr->call.args[0]);
        FUNC3("), (");
        FUNC2(expr->call.args[1]);
        FUNC3("), (");
        FUNC2(expr->call.args[2]);
        FUNC3("))");
    } else if (sym->name == FUNC7("aindex") || sym->name == FUNC7("ageti") || sym->name == FUNC7("adel")) {
        FUNC3("%s(%s, %s, (", sym->name, FUNC8(base, ""), FUNC8(key, ""));
        FUNC2(expr->call.args[0]);
        FUNC3("), (");
        FUNC2(expr->call.args[1]);
        FUNC3("))");
    } else if (sym->name == FUNC7("agetp") || sym->name == FUNC7("aget")) {
        FUNC3("%s(%s, %s, %s, (", sym->name, FUNC8(base, ""), FUNC8(key, ""), FUNC8(val, ""));
        FUNC2(expr->call.args[0]);
        FUNC3("), (");
        FUNC2(expr->call.args[1]);
        FUNC3("))");
    } else if (sym->name == FUNC7("aput")) {
        FUNC3("%s(%s, %s, (", sym->name, FUNC8(base, ""), FUNC8(key, ""));
        FUNC2(expr->call.args[0]);
        FUNC3("), (");
        FUNC2(expr->call.args[1]);
        FUNC3("), (");
        FUNC2(expr->call.args[2]);
        FUNC3("))");
    } else if (sym->name == FUNC7("ahdrsize") || sym->name == FUNC7("ahdralign") || sym->name == FUNC7("ahdr") ||
        sym->name == FUNC7("alen") || sym->name == FUNC7("acap") || sym->name == FUNC7("afree") ||
        sym->name == FUNC7("aclear") || sym->name == FUNC7("apop")) {
        FUNC3("%s(%s, (", sym->name, FUNC8(base, ""));
        FUNC2(expr->call.args[0]);
        FUNC3("))");
    } else if (sym->name == FUNC7("anew")) {
        Type *result_type = FUNC4(expr);
        FUNC0(FUNC6(result_type));
        FUNC3("%s(%s, ", sym->name, FUNC8(result_type->base, ""));
        FUNC2(expr->call.args[0]);
        FUNC3(")");
    } else {
        FUNC1(expr->pos, "Call to unimplemented intrinsic %s", sym->name);
    }
}