
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_7__ {TYPE_1__ x; } ;
struct TYPE_6__ {scalar_t__ file; int y; } ;
typedef TYPE_2__ Coordinate ;


 int * IR ;
 int N_SLINE ;
 int N_SOL ;
 TYPE_4__* cfunc ;
 scalar_t__ currentfile ;
 int genlabel (int) ;
 int print (char*,scalar_t__,int,...) ;
 int sparcIR ;
 int stabprefix ;

void stabline(Coordinate *cp) {
 if (cp->file && cp->file != currentfile) {
  int lab = genlabel(1);
  print(".stabs \"%s\",0x%x,0,0,%s%d\n", cp->file, N_SOL, stabprefix, lab);
  print("%s%d:\n", stabprefix, lab);
  currentfile = cp->file;
 }
 if (IR == &sparcIR)
  print(".stabd 0x%x,0,%d\n", N_SLINE, cp->y);
 else {
  int lab = genlabel(1);
  print(".stabn 0x%x,0,%d,%s%d-%s\n", N_SLINE, cp->y,
   stabprefix, lab, cfunc->x.name);
  print("%s%d:\n", stabprefix, lab);
 }
}
