
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ offset; int * freemask; } ;
typedef TYPE_1__ Env ;


 size_t FREG ;
 size_t IREG ;
 int * freemask ;
 scalar_t__ maxoffset ;
 scalar_t__ offset ;

void blockend(Env *e) {
 if (offset > maxoffset)
  maxoffset = offset;
 offset = e->offset;
 freemask[IREG] = e->freemask[IREG];
 freemask[FREG] = e->freemask[FREG];
}
