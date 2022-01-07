
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Type ;
struct TYPE_3__ {int sclass; int name; } ;
typedef TYPE_1__* Symbol ;







 int assert (int ) ;
 int fprint (int ,char*,int,...) ;
 int stderr ;
 int typestring (int ,int ) ;

void printdecl(Symbol p, Type ty) {
 switch (p->sclass) {
 case 132:
  fprint(stderr, "%s;\n", typestring(ty, p->name));
  break;
 case 129: case 130:
  fprint(stderr, "%k %s;\n", p->sclass, typestring(ty, p->name));
  break;
 case 128: case 131:
  break;
 default: assert(0);
 }
}
