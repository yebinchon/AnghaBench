
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* stabend ) (int *,int ,int **,int *,int *) ;} ;
typedef int Symbol ;
typedef int Coordinate ;


 int fclose (scalar_t__) ;
 scalar_t__ srcfp ;
 TYPE_1__ stabIR ;
 int stub1 (int *,int ,int **,int *,int *) ;

__attribute__((used)) static void stabend(Coordinate *cp, Symbol p, Coordinate **cpp, Symbol *sp, Symbol *stab) {
 if (stabIR.stabend)
  (*stabIR.stabend)(cp, p, cpp, sp, stab);
 if (srcfp)
  fclose(srcfp);
}
