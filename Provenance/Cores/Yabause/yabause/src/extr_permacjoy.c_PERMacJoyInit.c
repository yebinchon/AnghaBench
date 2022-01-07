
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int joydata_t ;


 int initted ;
 int * joy_get_joystick (int) ;
 int joy_open_joystick (int *) ;
 int joy_scan_joysticks () ;
 int joycount ;
 int ** joys ;
 scalar_t__ malloc (int) ;

int PERMacJoyInit(void) {
    int i;


    if(initted)
        return 0;


    joycount = joy_scan_joysticks();
    if(joycount == -1) {
        joycount = 0;
        return -1;
    }

    joys = (joydata_t **)malloc(sizeof(joydata_t *) * joycount);
    if(!joys) {
        joycount = 0;
        return -1;
    }


    for(i = 0; i < joycount; ++i) {
        joys[i] = joy_get_joystick(i);

        if(joys[i] == ((void*)0))
            continue;

        if(!joy_open_joystick(joys[i])) {
            joys[i] = ((void*)0);
            continue;
        }
    }

    initted = 1;

    return 0;
}
