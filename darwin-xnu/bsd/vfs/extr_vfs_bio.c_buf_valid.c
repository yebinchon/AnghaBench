
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_flags; } ;


 int B_DELWRI ;
 int B_DONE ;

int
buf_valid(buf_t bp) {

        if ( (bp->b_flags & (B_DONE | B_DELWRI)) )
         return 1;
 return 0;
}
