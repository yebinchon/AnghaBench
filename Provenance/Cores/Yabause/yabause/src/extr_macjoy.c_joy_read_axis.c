
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int axes_count; TYPE_3__* axes; } ;
typedef TYPE_1__ joydata_t ;
struct TYPE_6__ {scalar_t__ max; } ;


 float joy_read_element (TYPE_1__*,TYPE_3__*) ;

int joy_read_axis(joydata_t *joy, int index) {
    float value;

    if(index >= joy->axes_count) {
        return 0;
    }

    value = joy_read_element(joy, joy->axes + index) /
        (float)(joy->axes[index].max + 1);

    return (int)(value * 32768);
}
