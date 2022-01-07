
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flv_off; int flv_size; } ;
typedef TYPE_1__ RTMPContext ;



__attribute__((used)) static int update_offset(RTMPContext *rt, int size)
{
    int old_flv_size;


    if (rt->flv_off < rt->flv_size) {

        old_flv_size = rt->flv_size;
        rt->flv_size += size;
    } else {

        old_flv_size = 0;
        rt->flv_size = size;
        rt->flv_off = 0;
    }

    return old_flv_size;
}
