
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_redundancy_flags; } ;



uint32_t
buf_redundancy_flags(buf_t bp)
{
 return bp->b_redundancy_flags;
}
