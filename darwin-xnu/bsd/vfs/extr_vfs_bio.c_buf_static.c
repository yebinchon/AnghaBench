
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_flags; } ;


 int B_STATICCONTENT ;

int
buf_static(buf_t bp) {
    if ( (bp->b_flags & B_STATICCONTENT) )
        return 1;
    return 0;
}
