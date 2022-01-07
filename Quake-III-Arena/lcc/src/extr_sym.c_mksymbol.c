
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int Type ;
struct TYPE_8__ {int (* defsymbol ) (TYPE_1__*) ;} ;
struct TYPE_7__ {int sclass; int defined; int type; int scope; int name; } ;
typedef TYPE_1__* Symbol ;


 int EXTERN ;
 int GLOBAL ;
 TYPE_6__* IR ;
 int NEW0 (TYPE_1__*,int ) ;
 int PERM ;
 int globals ;
 TYPE_1__* install (int ,int *,int ,int ) ;
 int string (char const*) ;
 int stub1 (TYPE_1__*) ;

Symbol mksymbol(int sclass, const char *name, Type ty) {
 Symbol p;

 if (sclass == EXTERN)
  p = install(string(name), &globals, GLOBAL, PERM);
 else {
  NEW0(p, PERM);
  p->name = string(name);
  p->scope = GLOBAL;
 }
 p->sclass = sclass;
 p->type = ty;
 (*IR->defsymbol)(p);
 p->defined = 1;
 return p;
}
