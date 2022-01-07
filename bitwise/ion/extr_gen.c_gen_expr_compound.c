
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int Type ;
struct TYPE_9__ {scalar_t__ kind; int init; int index; int name; } ;
struct TYPE_7__ {size_t num_fields; TYPE_3__* fields; scalar_t__ type; } ;
struct TYPE_8__ {TYPE_1__ compound; } ;
typedef TYPE_2__ Expr ;
typedef TYPE_3__ CompoundField ;


 scalar_t__ FIELD_INDEX ;
 scalar_t__ FIELD_NAME ;
 int gen_expr (int ) ;
 int genf (char*,...) ;
 int * get_resolved_expected_type (TYPE_2__*) ;
 int get_resolved_type (TYPE_2__*) ;
 int is_ptr_type (int *) ;
 int type_to_cdecl (int ,char*) ;
 int typespec_to_cdecl (scalar_t__,char*) ;

void gen_expr_compound(Expr *expr) {
    Type *expected_type = get_resolved_expected_type(expr);
    if (expected_type && !is_ptr_type(expected_type)) {
        genf("{");
    } else if (expr->compound.type) {
        genf("(%s){", typespec_to_cdecl(expr->compound.type, ""));
    } else {
        genf("(%s){", type_to_cdecl(get_resolved_type(expr), ""));
    }
    for (size_t i = 0; i < expr->compound.num_fields; i++) {
        if (i != 0) {
            genf(", ");
        }
        CompoundField field = expr->compound.fields[i];
        if (field.kind == FIELD_NAME) {
            genf(".%s = ", field.name);
        } else if (field.kind == FIELD_INDEX) {
            genf("[");
            gen_expr(field.index);
            genf("] = ");
        }
        gen_expr(field.init);
    }
    if (expr->compound.num_fields == 0) {
        genf("0");
    }
    genf("}");
}
