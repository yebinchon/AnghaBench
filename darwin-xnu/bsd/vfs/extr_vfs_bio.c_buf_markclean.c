
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_4__ {int b_vp; int b_flags; } ;


 int B_DELWRI ;
 int CLR (int ,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 int OSAddAtomicLong (int,int *) ;
 int buf_reassign (TYPE_1__*,int ) ;
 int nbdwrite ;

void
buf_markclean(buf_t bp) {

 if (ISSET(bp->b_flags, B_DELWRI)) {
  CLR(bp->b_flags, B_DELWRI);

  OSAddAtomicLong(-1, &nbdwrite);
  buf_reassign(bp, bp->b_vp);
 }
}
