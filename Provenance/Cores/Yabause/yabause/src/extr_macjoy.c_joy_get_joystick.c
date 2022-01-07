
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int joydata_t ;


 int joy_count ;
 int * joys ;

joydata_t *joy_get_joystick(int index) {
    if(index < 0 || index >= joy_count) {
        return ((void*)0);
    }

    return &joys[index];
}
