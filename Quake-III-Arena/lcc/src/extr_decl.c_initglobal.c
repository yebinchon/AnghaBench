
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* Type ;
struct TYPE_10__ {scalar_t__ sclass; TYPE_1__* type; } ;
struct TYPE_9__ {scalar_t__ size; struct TYPE_9__* type; } ;
typedef TYPE_2__* Symbol ;


 scalar_t__ AUTO ;
 int DATA ;
 scalar_t__ EXTERN ;
 int LIT ;
 scalar_t__ STATIC ;
 int defglobal (TYPE_2__*,int ) ;
 char gettok () ;
 TYPE_1__* initializer (TYPE_1__*,int ) ;
 scalar_t__ isarray (TYPE_1__*) ;
 scalar_t__ isconst (TYPE_1__*) ;
 char t ;

__attribute__((used)) static void initglobal(Symbol p, int flag) {
 Type ty;

 if (t == '=' || flag) {
  if (p->sclass == STATIC) {
   for (ty = p->type; isarray(ty); ty = ty->type)
    ;
   defglobal(p, isconst(ty) ? LIT : DATA);
  } else
   defglobal(p, DATA);
  if (t == '=')
   t = gettok();
  ty = initializer(p->type, 0);
  if (isarray(p->type) && p->type->size == 0)
   p->type = ty;
  if (p->sclass == EXTERN)
   p->sclass = AUTO;
 }
}
