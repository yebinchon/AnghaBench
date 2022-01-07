
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* buf_t ;
struct TYPE_4__ {int le_next; } ;
struct TYPE_5__ {int b_flags; TYPE_1__ b_vnbufs; void* b_wcred; void* b_rcred; int b_dev; } ;


 int B_INVAL ;
 void* NOCRED ;
 int NODEV ;
 int NOLIST ;
 int bzero (char*,int) ;

__attribute__((used)) static __inline__ void
bufhdrinit(buf_t bp)
{
 bzero((char *)bp, sizeof *bp);
 bp->b_dev = NODEV;
 bp->b_rcred = NOCRED;
 bp->b_wcred = NOCRED;
 bp->b_vnbufs.le_next = NOLIST;
 bp->b_flags = B_INVAL;

 return;
}
