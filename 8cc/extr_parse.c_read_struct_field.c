
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int Type ;
struct TYPE_12__ {scalar_t__ kind; int sval; } ;
typedef TYPE_2__ Token ;
struct TYPE_13__ {TYPE_1__* ty; } ;
struct TYPE_11__ {scalar_t__ kind; int fields; } ;
typedef TYPE_3__ Node ;


 scalar_t__ KIND_STRUCT ;
 scalar_t__ TIDENT ;
 TYPE_3__* ast_struct_ref (int *,TYPE_3__*,int ) ;
 int * dict_get (int ,int ) ;
 int error (char*,int ) ;
 TYPE_2__* get () ;
 int node2s (TYPE_3__*) ;
 int tok2s (TYPE_2__*) ;

__attribute__((used)) static Node *read_struct_field(Node *struc) {
    if (struc->ty->kind != KIND_STRUCT)
        error("struct expected, but got %s", node2s(struc));
    Token *name = get();
    if (name->kind != TIDENT)
        error("field name expected, but got %s", tok2s(name));
    Type *field = dict_get(struc->ty->fields, name->sval);
    if (!field)
        error("struct has no such field: %s", tok2s(name));
    return ast_struct_ref(field, struc, name->sval);
}
