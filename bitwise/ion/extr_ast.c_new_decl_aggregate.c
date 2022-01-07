
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * aggregate; } ;
typedef int SrcPos ;
typedef scalar_t__ DeclKind ;
typedef TYPE_1__ Decl ;
typedef int Aggregate ;


 scalar_t__ DECL_STRUCT ;
 scalar_t__ DECL_UNION ;
 int assert (int) ;
 TYPE_1__* new_decl (scalar_t__,int ,char const*) ;

Decl *new_decl_aggregate(SrcPos pos, DeclKind kind, const char *name, Aggregate *aggregate) {
    assert(kind == DECL_STRUCT || kind == DECL_UNION);
    Decl *d = new_decl(kind, pos, name);
    d->aggregate = aggregate;
    return d;
}
