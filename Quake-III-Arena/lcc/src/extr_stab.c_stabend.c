
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* segment ) (int ) ;} ;
typedef int Symbol ;
typedef int Coordinate ;


 int CODE ;
 TYPE_1__* IR ;
 int N_SO ;
 int print (char*,int ,...) ;
 int stabprefix ;
 int stub1 (int ) ;

void stabend(Coordinate *cp, Symbol p, Coordinate **cpp, Symbol *sp, Symbol *stab) {
 (*IR->segment)(CODE);
 print(".stabs \"\", %d, 0, 0,%setext\n", N_SO, stabprefix);
 print("%setext:\n", stabprefix);
}
