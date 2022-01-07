
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* Type ;
struct TYPE_9__ {scalar_t__ scope; char src; TYPE_1__* type; int name; int defined; } ;
struct TYPE_8__ {int op; } ;
typedef TYPE_2__* Symbol ;


 scalar_t__ PARAM ;
 int PERM ;
 int assert (char*) ;
 int error (char*,int ,char*) ;
 int genlabel (int) ;
 TYPE_2__* install (char*,int *,scalar_t__,int ) ;
 scalar_t__ level ;
 TYPE_2__* lookup (char*,int ) ;
 scalar_t__ maxlevel ;
 char src ;
 char* stringd (int ) ;
 TYPE_1__* type (int,int *,int ,int ,TYPE_2__*) ;
 int types ;

Type newstruct(int op, char *tag) {
 Symbol p;

 assert(tag);
 if (*tag == 0)
  tag = stringd(genlabel(1));
 else
  if ((p = lookup(tag, types)) != ((void*)0) && (p->scope == level
  || p->scope == PARAM && level == PARAM+1)) {
   if (p->type->op == op && !p->defined)
    return p->type;
   error("redefinition of `%s' previously defined at %w\n",
    p->name, &p->src);
  }
 p = install(tag, &types, level, PERM);
 p->type = type(op, ((void*)0), 0, 0, p);
 if (p->scope > maxlevel)
  maxlevel = p->scope;
 p->src = src;
 return p->type;
}
