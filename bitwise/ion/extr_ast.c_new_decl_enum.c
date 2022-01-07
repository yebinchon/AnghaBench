
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_5__ {size_t num_items; int items; int * type; } ;
struct TYPE_6__ {TYPE_1__ enum_decl; } ;
typedef int SrcPos ;
typedef int EnumItem ;
typedef TYPE_2__ Decl ;


 int AST_DUP (int *) ;
 int DECL_ENUM ;
 TYPE_2__* new_decl (int ,int ,char const*) ;

Decl *new_decl_enum(SrcPos pos, const char *name, Typespec *type, EnumItem *items, size_t num_items) {
    Decl *d = new_decl(DECL_ENUM, pos, name);
    d->enum_decl.type = type;
    d->enum_decl.items = AST_DUP(items);
    d->enum_decl.num_items = num_items;
    return d;
}
