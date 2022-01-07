
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buttons_count; scalar_t__ buttons; } ;
typedef TYPE_1__ joydata_t ;


 int joy_read_element (TYPE_1__*,scalar_t__) ;

int joy_read_button(joydata_t *joy, int num) {

    --num;

    if(num >= joy->buttons_count) {
        return -1;
    }

    return joy_read_element(joy, joy->buttons + num);
}
