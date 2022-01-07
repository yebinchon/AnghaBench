
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kind; int ty; int glabel; int loff; int struc; } ;
typedef TYPE_1__ Node ;






 int SAVE ;
 int emit_assign_deref (TYPE_1__*) ;
 int emit_assign_struct_ref (int ,int ,int ) ;
 int emit_gsave (int ,int ,int ) ;
 int emit_lsave (int ,int ) ;
 int ensure_lvar_init (TYPE_1__*) ;
 int error (char*) ;

__attribute__((used)) static void emit_store(Node *var) {
    SAVE;
    switch (var->kind) {
    case 131: emit_assign_deref(var); break;
    case 128: emit_assign_struct_ref(var->struc, var->ty, 0); break;
    case 129:
        ensure_lvar_init(var);
        emit_lsave(var->ty, var->loff);
        break;
    case 130: emit_gsave(var->glabel, var->ty, 0); break;
    default: error("internal error");
    }
}
