
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufhashhdr {struct buf* lh_first; } ;
struct TYPE_2__ {struct buf** le_prev; struct buf* le_next; } ;
struct buf {TYPE_1__ b_hash; } ;
typedef struct buf* buf_t ;


 int panic (char*) ;

__attribute__((used)) static __inline__ void
blistenterhead(struct bufhashhdr * head, buf_t bp)
{
 if ((bp->b_hash.le_next = (head)->lh_first) != ((void*)0))
  (head)->lh_first->b_hash.le_prev = &(bp)->b_hash.le_next;
 (head)->lh_first = bp;
 bp->b_hash.le_prev = &(head)->lh_first;
 if (bp->b_hash.le_prev == (struct buf **)0xdeadbeef)
  panic("blistenterhead: le_prev is deadbeef");
}
