
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; int pos; int kind; } ;
typedef int SrcPos ;
typedef int DeclKind ;
typedef TYPE_1__ Decl ;


 TYPE_1__* ast_alloc (int) ;

Decl *new_decl(DeclKind kind, SrcPos pos, const char *name) {
    Decl *d = ast_alloc(sizeof(Decl));
    d->kind = kind;
    d->pos = pos;
    d->name = name;
    return d;
}
