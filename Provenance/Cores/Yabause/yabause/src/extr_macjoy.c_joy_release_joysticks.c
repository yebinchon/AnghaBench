
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int joy_close_joystick (int *) ;
 int joy_count ;
 int joy_release_joystick (int *) ;
 int * joys ;

void joy_release_joysticks(void) {
    int i;

    for(i = 0; i < joy_count; ++i) {
        joy_close_joystick(joys + i);
        joy_release_joystick(joys + i);
    }

    if(joys != ((void*)0)) {
        free(joys);
        joys = ((void*)0);
    }

    joy_count = 0;
}
