
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_5__ {int * type; } ;
struct TYPE_6__ {TYPE_1__ typedef_decl; } ;
typedef int SrcPos ;
typedef TYPE_2__ Decl ;


 int DECL_TYPEDEF ;
 TYPE_2__* new_decl (int ,int ,char const*) ;

Decl *new_decl_typedef(SrcPos pos, const char *name, Typespec *type) {
    Decl *d = new_decl(DECL_TYPEDEF, pos, name);
    d->typedef_decl.type = type;
    return d;
}
