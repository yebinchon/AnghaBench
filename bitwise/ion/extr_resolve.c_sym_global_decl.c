
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_11__ {size_t num_items; TYPE_3__* items; } ;
struct TYPE_14__ {scalar_t__ kind; int notes; TYPE_1__ enum_decl; int pos; scalar_t__ name; } ;
struct TYPE_13__ {char* name; int pos; int * init; } ;
struct TYPE_12__ {char* name; } ;
typedef TYPE_2__ Sym ;
typedef int Expr ;
typedef TYPE_3__ EnumItem ;
typedef TYPE_4__ Decl ;


 scalar_t__ DECL_ENUM ;
 int TOKEN_ADD ;
 int * enum_typespec ;
 TYPE_4__* new_decl_const (int ,char*,int *,int *) ;
 int * new_expr_binary (int ,int ,int ,int *) ;
 int * new_expr_int (int ,int,int ,int ) ;
 int new_expr_name (int ,char const*) ;
 int * new_typespec_name (int ,char const**,int) ;
 char* str_intern (char*) ;
 TYPE_2__* sym_decl (TYPE_4__*) ;
 int sym_global_put (char*,TYPE_2__*) ;

Sym *sym_global_decl(Decl *decl) {
    Sym *sym = ((void*)0);
    if (decl->name) {
        sym = sym_decl(decl);
        sym_global_put(sym->name, sym);
    }
    if (decl->kind == DECL_ENUM) {
        const char *name = sym ? sym->name : str_intern("int");
        Typespec *enum_typespec = enum_typespec = new_typespec_name(decl->pos, &name, 1);
        const char *prev_item_name = ((void*)0);
        for (size_t i = 0; i < decl->enum_decl.num_items; i++) {
            EnumItem item = decl->enum_decl.items[i];
            Expr *init;
            if (item.init) {
                init = item.init;
            } else if (prev_item_name) {
                init = new_expr_binary(item.pos, TOKEN_ADD, new_expr_name(item.pos, prev_item_name), new_expr_int(item.pos, 1, 0, 0));
            } else {
                init = new_expr_int(item.pos, 0, 0, 0);
            }
            Decl *item_decl = new_decl_const(item.pos, item.name, enum_typespec, init);
            item_decl->notes = decl->notes;
            sym_global_decl(item_decl);
            prev_item_name = item.name;
        }
    }
    return sym;
}
