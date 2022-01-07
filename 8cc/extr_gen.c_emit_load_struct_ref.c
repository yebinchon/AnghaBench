
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ offset; } ;
typedef TYPE_2__ Type ;
struct TYPE_12__ {int kind; int operand; TYPE_1__* ty; struct TYPE_12__* struc; int glabel; scalar_t__ loff; } ;
struct TYPE_10__ {int offset; } ;
typedef TYPE_3__ Node ;






 int SAVE ;
 int emit_expr (int ) ;
 int emit_gload (TYPE_2__*,int ,int ) ;
 int emit_lload (TYPE_2__*,char*,int ) ;
 int ensure_lvar_init (TYPE_3__*) ;
 int error (char*,int ) ;
 int node2s (TYPE_3__*) ;

__attribute__((used)) static void emit_load_struct_ref(Node *struc, Type *field, int off) {
    SAVE;
    switch (struc->kind) {
    case 129:
        ensure_lvar_init(struc);
        emit_lload(field, "rbp", struc->loff + field->offset + off);
        break;
    case 130:
        emit_gload(field, struc->glabel, field->offset + off);
        break;
    case 128:
        emit_load_struct_ref(struc->struc, field, struc->ty->offset + off);
        break;
    case 131:
        emit_expr(struc->operand);
        emit_lload(field, "rax", field->offset + off);
        break;
    default:
        error("internal error: %s", node2s(struc));
    }
}
