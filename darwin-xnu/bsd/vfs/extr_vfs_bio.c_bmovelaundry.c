
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_4__ {size_t b_whichq; int b_timestamp; } ;


 size_t BQ_LAUNDRY ;
 int binstailfree (TYPE_1__*,int *,size_t) ;
 int blaundrycnt ;
 int buf_timestamp () ;
 int * bufqueues ;

__attribute__((used)) static __inline__ void
bmovelaundry(buf_t bp)
{
 bp->b_whichq = BQ_LAUNDRY;
 bp->b_timestamp = buf_timestamp();
 binstailfree(bp, &bufqueues[BQ_LAUNDRY], BQ_LAUNDRY);
 blaundrycnt++;
}
