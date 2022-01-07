
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_relative; size_t num_names; int import_all; size_t num_items; void* items; void* names; } ;
struct TYPE_6__ {char const* name; TYPE_1__ import; } ;
typedef int SrcPos ;
typedef char const* ImportItem ;
typedef TYPE_2__ Decl ;


 void* AST_DUP (char const**) ;
 int DECL_IMPORT ;
 TYPE_2__* new_decl (int ,int ,int *) ;

Decl *new_decl_import(SrcPos pos, const char *rename_name, bool is_relative, const char **names, size_t num_names, bool import_all, ImportItem *items, size_t num_items) {
    Decl *d = new_decl(DECL_IMPORT, pos, ((void*)0));
    d->name = rename_name;
    d->import.is_relative = is_relative;
    d->import.names = AST_DUP(names);
    d->import.num_names = num_names;
    d->import.import_all = import_all;
    d->import.items = AST_DUP(items);
    d->import.num_items = num_items;
    return d;
}
