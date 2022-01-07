
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int type; } ;
struct TYPE_11__ {scalar_t__ kind; int type; int val; } ;
typedef TYPE_1__ Sym ;
typedef int SrcPos ;
typedef TYPE_2__ Operand ;


 scalar_t__ SYM_CONST ;
 scalar_t__ SYM_FUNC ;
 scalar_t__ SYM_VAR ;
 int fatal_error (int ,char*,char const*) ;
 scalar_t__ is_array_type (int ) ;
 int is_incomplete_array_type (int ) ;
 TYPE_2__ operand_const (int ,int ) ;
 TYPE_2__ operand_decay (TYPE_2__) ;
 TYPE_2__ operand_lvalue (int ) ;
 TYPE_2__ operand_null ;
 TYPE_2__ operand_rvalue (int ) ;
 TYPE_1__* resolve_name (char const*) ;

Operand resolve_name_operand(SrcPos pos, const char *name) {
    Sym *sym = resolve_name(name);
    if (!sym) {
        fatal_error(pos, "Unresolved name '%s'", name);
    }
    if (sym->kind == SYM_VAR) {
        Operand operand = operand_lvalue(sym->type);
        if (is_array_type(operand.type) && !is_incomplete_array_type(operand.type)) {
            operand = operand_decay(operand);
        }
        return operand;
    } else if (sym->kind == SYM_CONST) {
        return operand_const(sym->type, sym->val);
    } else if (sym->kind == SYM_FUNC) {
        return operand_rvalue(sym->type);
    } else {
        fatal_error(pos, "%s must be a var or const", name);
        return operand_null;
    }
}
