
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 scalar_t__ initted ;
 int joy_close_joystick (int ) ;
 int joycount ;
 int * joys ;

void PERMacJoyDeInit(void) {
    int i;

    if(!initted)
        return;


    for(i = 0; i < joycount; ++i) {
        joy_close_joystick(joys[i]);
    }

    free(joys);
    joys = ((void*)0);
    joycount = 0;
    initted = 0;
}
