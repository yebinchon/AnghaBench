
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int caddr_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_5__ {scalar_t__ b_resid; int b_bcount; } ;


 scalar_t__ buf_map (TYPE_1__*,int *) ;
 int buf_unmap (TYPE_1__*) ;
 int bzero (int ,int ) ;

void
buf_clear(buf_t bp) {
        caddr_t baddr;

        if (buf_map(bp, &baddr) == 0) {
         bzero(baddr, bp->b_bcount);
  buf_unmap(bp);
 }
 bp->b_resid = 0;
}
