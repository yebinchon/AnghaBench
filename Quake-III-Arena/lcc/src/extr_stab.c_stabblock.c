
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ x; } ;
typedef scalar_t__ Symbol ;


 int * IR ;
 int N_LBRAC ;
 int N_RBRAC ;
 TYPE_2__* cfunc ;
 int genlabel (int) ;
 int print (char*,int ,int,...) ;
 int sparcIR ;
 int stabprefix ;
 int stabsym (int ) ;

void stabblock(int brace, int lev, Symbol *p) {
 if (brace == '{')
  while (*p)
   stabsym(*p++);
 if (IR == &sparcIR)
  print(".stabd 0x%x,0,%d\n", brace == '{' ? N_LBRAC : N_RBRAC, lev);
 else {
  int lab = genlabel(1);
  print(".stabn 0x%x,0,%d,%s%d-%s\n", brace == '{' ? N_LBRAC : N_RBRAC, lev,
   stabprefix, lab, cfunc->x.name);
  print("%s%d:\n", stabprefix, lab);
 }
}
