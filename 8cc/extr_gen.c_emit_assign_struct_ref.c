
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ offset; } ;
typedef TYPE_2__ Type ;
struct TYPE_13__ {int kind; int operand; TYPE_1__* ty; struct TYPE_13__* struc; int glabel; scalar_t__ loff; } ;
struct TYPE_11__ {int offset; } ;
typedef TYPE_3__ Node ;






 int SAVE ;
 int do_emit_assign_deref (TYPE_2__*,int ) ;
 int emit_expr (int ) ;
 int emit_gsave (int ,TYPE_2__*,int ) ;
 int emit_lsave (TYPE_2__*,int ) ;
 int ensure_lvar_init (TYPE_3__*) ;
 int error (char*,int ) ;
 int node2s (TYPE_3__*) ;
 int push (char*) ;

__attribute__((used)) static void emit_assign_struct_ref(Node *struc, Type *field, int off) {
    SAVE;
    switch (struc->kind) {
    case 129:
        ensure_lvar_init(struc);
        emit_lsave(field, struc->loff + field->offset + off);
        break;
    case 130:
        emit_gsave(struc->glabel, field, field->offset + off);
        break;
    case 128:
        emit_assign_struct_ref(struc->struc, field, off + struc->ty->offset);
        break;
    case 131:
        push("rax");
        emit_expr(struc->operand);
        do_emit_assign_deref(field, field->offset + off);
        break;
    default:
        error("internal error: %s", node2s(struc));
    }
}
