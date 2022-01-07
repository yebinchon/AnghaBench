
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hats_count; TYPE_4__* hats; } ;
typedef TYPE_1__ joydata_t ;
struct TYPE_6__ {int min; int max; } ;


 int JOY_HAT_CENTER ;
 int JOY_HAT_DOWN ;
 int JOY_HAT_LEFT ;
 int JOY_HAT_RIGHT ;
 int JOY_HAT_UP ;
 int joy_read_element (TYPE_1__*,TYPE_4__*) ;

int joy_read_hat(joydata_t *joy, int index) {
    int value;

    if(index >= joy->hats_count) {
        return -1;
    }

    value = joy_read_element(joy, joy->hats + index) - joy->hats[index].min;


    if(joy->hats[index].max - joy->hats[index].min + 1 == 4) {
        value <<= 1;
    }

    switch(value) {
        case 0:
            return JOY_HAT_UP;
        case 1:
            return JOY_HAT_UP | JOY_HAT_RIGHT;
        case 2:
            return JOY_HAT_RIGHT;
        case 3:
            return JOY_HAT_RIGHT | JOY_HAT_DOWN;
        case 4:
            return JOY_HAT_DOWN;
        case 5:
            return JOY_HAT_DOWN | JOY_HAT_LEFT;
        case 6:
            return JOY_HAT_LEFT;
        case 7:
            return JOY_HAT_LEFT | JOY_HAT_UP;
        default:
            return JOY_HAT_CENTER;
    }
}
