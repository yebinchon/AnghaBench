
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_3__ {scalar_t__ b_error; int b_flags; } ;


 int B_ASYNC ;
 int B_DONE ;
 int B_ERROR ;
 int B_FUA ;
 int B_INVAL ;
 int B_NOCACHE ;
 int B_READ ;
 int B_WRITE ;
 int CLR (int ,int) ;
 int SET (int ,int) ;

void
buf_reset(buf_t bp, int32_t io_flags) {

        CLR(bp->b_flags, (B_READ | B_WRITE | B_ERROR | B_DONE | B_INVAL | B_ASYNC | B_NOCACHE | B_FUA));
 SET(bp->b_flags, (io_flags & (B_ASYNC | B_READ | B_WRITE | B_NOCACHE)));

 bp->b_error = 0;
}
