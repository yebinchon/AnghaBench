
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {char* name; TYPE_1__* regnode; } ;
struct TYPE_11__ {scalar_t__ sclass; int name; TYPE_2__ x; scalar_t__ temporary; int type; } ;
struct TYPE_9__ {TYPE_3__* vbl; } ;
typedef TYPE_3__* Symbol ;


 void* AUTO ;
 scalar_t__ REGISTER ;
 TYPE_3__* askreg (TYPE_3__*,int ) ;
 int assert (TYPE_3__*) ;
 int debug (int ) ;
 int dumpregs (char*,char*,int ) ;
 int isscalar (int ) ;
 int vmask ;

int askregvar(Symbol p, Symbol regs) {
 Symbol r;

 assert(p);
 if (p->sclass != REGISTER)
  return 0;
 else if (!isscalar(p->type)) {
  p->sclass = AUTO;
  return 0;
 }
 else if (p->temporary) {
  p->x.name = "?";
  return 1;
 }
 else if ((r = askreg(regs, vmask)) != ((void*)0)) {
  p->x.regnode = r->x.regnode;
  p->x.regnode->vbl = p;
  p->x.name = r->x.name;
  debug(dumpregs("(allocating %s to symbol %s)\n", p->x.name, p->name));
  return 1;
 }
 else {
  p->sclass = AUTO;
  return 0;
 }
}
