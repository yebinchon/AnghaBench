
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; TYPE_3__* sym; struct TYPE_5__* base; } ;
typedef TYPE_1__ Type ;
struct TYPE_6__ {int decl; } ;


 scalar_t__ TYPE_ARRAY ;
 scalar_t__ TYPE_CONST ;
 scalar_t__ TYPE_PTR ;
 scalar_t__ TYPE_STRUCT ;
 scalar_t__ TYPE_TUPLE ;
 scalar_t__ TYPE_UNION ;
 scalar_t__ get_decl_note (int ,int ) ;
 int is_sym_reachable (TYPE_3__*) ;
 int is_tuple_reachable (TYPE_1__*) ;
 int str_intern (char*) ;

bool is_excluded_typeinfo(Type *type) {
    while (type->kind == TYPE_ARRAY || type->kind == TYPE_CONST || type->kind == TYPE_PTR) {
        type = type->base;
    }
    if (type->sym) {
        if (get_decl_note(type->sym->decl, str_intern("notypeinfo"))) {
            return 1;
        } else {
            return !is_sym_reachable(type->sym);
        }
    } else if (type->kind == TYPE_TUPLE) {
        return !is_tuple_reachable(type);
    } else {
        return !type->sym && (type->kind == TYPE_STRUCT || type->kind == TYPE_UNION);
    }
}
