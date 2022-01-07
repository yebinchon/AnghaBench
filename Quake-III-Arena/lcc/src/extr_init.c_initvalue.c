
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef char* Type ;
typedef TYPE_1__* Tree ;
struct TYPE_8__ {int op; int type; } ;


 scalar_t__ CNST ;
 char* assign (char*,TYPE_1__*) ;
 TYPE_1__* cast (TYPE_1__*,char*) ;
 int consttree (int ,int ) ;
 int error (char*,...) ;
 TYPE_1__* expr1 (int ) ;
 scalar_t__ generic (int ) ;
 int inttype ;
 int needconst ;
 TYPE_1__* retype (int ,char*) ;

__attribute__((used)) static Tree initvalue(Type ty) {
 Type aty;
 Tree e;

 needconst++;
 e = expr1(0);
 if ((aty = assign(ty, e)) != ((void*)0))
  e = cast(e, aty);
 else {
  error("invalid initialization type; found `%t' expected `%t'\n",
   e->type, ty);
  e = retype(consttree(0, inttype), ty);
 }
 needconst--;
 if (generic(e->op) != CNST) {
  error("initializer must be constant\n");
  e = retype(consttree(0, inttype), ty);
 }
 return e;
}
