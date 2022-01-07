
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__* cb_to_level; } ;
typedef TYPE_1__ DCAEncContext ;


 scalar_t__ FFABS (scalar_t__) ;

__attribute__((used)) static int32_t get_cb(DCAEncContext *c, int32_t in)
{
    int i, res = 0;
    in = FFABS(in);

    for (i = 1024; i > 0; i >>= 1) {
        if (c->cb_to_level[i + res] >= in)
            res += i;
    }
    return -res;
}
