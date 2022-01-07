
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;
typedef int Tree ;


 int assert (int ) ;
 int atop (int ) ;
 int cnsttree (int ,unsigned long) ;
 scalar_t__ isarray (int ) ;
 int isint (int ) ;

Tree consttree(unsigned n, Type ty) {
 if (isarray(ty))
  ty = atop(ty);
 else assert(isint(ty));
 return cnsttree(ty, (unsigned long)n);
}
