
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_4__* Type ;
struct TYPE_14__ {TYPE_4__* type; struct TYPE_14__* link; } ;
struct TYPE_12__ {TYPE_2__* sym; } ;
struct TYPE_10__ {int marked; scalar_t__ typeno; } ;
struct TYPE_13__ {int op; TYPE_3__ u; TYPE_1__ x; struct TYPE_13__* type; } ;
struct TYPE_11__ {char* name; } ;
typedef TYPE_5__* Field ;
 int assert (int ) ;
 int dbxout (TYPE_4__*) ;
 TYPE_5__* fieldlist (TYPE_4__*) ;
 scalar_t__ ntypes ;

__attribute__((used)) static void asgncode(Type ty, int lev) {
 if (ty->x.marked || ty->x.typeno)
  return;
 ty->x.marked = 1;
 switch (ty->op) {
 case 128: case 138: case 128 +138:
  asgncode(ty->type, lev);
  ty->x.typeno = ty->type->x.typeno;
  break;
 case 133: case 135: case 139:
  asgncode(ty->type, lev + 1);

 case 129: case 134: case 130: case 136:
  break;
 case 132: case 131: {
  Field p;
  for (p = fieldlist(ty); p; p = p->link)
   asgncode(p->type, lev + 1);

 case 137:
  if (ty->x.typeno == 0)
   ty->x.typeno = ++ntypes;
  if (lev > 0 && (*ty->u.sym->name < '0' || *ty->u.sym->name > '9'))
   dbxout(ty);
  break;
  }
 default:
  assert(0);
 }
}
