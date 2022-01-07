
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int maple_device_t ;
struct TYPE_3__ {int buttons; int rtrig; int ltrig; int joyx; int joyy; } ;
typedef TYPE_1__ cont_state_t ;
struct TYPE_4__ {int* padbits; } ;


 int CONT_A ;
 int CONT_B ;
 int CONT_DPAD_DOWN ;
 int CONT_DPAD_LEFT ;
 int CONT_DPAD_RIGHT ;
 int CONT_DPAD_UP ;
 int CONT_START ;
 int CONT_X ;
 int CONT_Y ;
 int MAPLE_FUNC_CONTROLLER ;
 int YabauseExec () ;
 scalar_t__ maple_dev_status (int *) ;
 int * maple_enum_type (int ,int ) ;
 TYPE_2__* pad1 ;

int PERDCHandleEvents(void) {
    maple_device_t *dev;

    dev = maple_enum_type(0, MAPLE_FUNC_CONTROLLER);
    if(dev != ((void*)0)) {
        cont_state_t *state = (cont_state_t *) maple_dev_status(dev);

        if(state != ((void*)0)) {
            if(state->buttons & CONT_DPAD_UP)
                *pad1->padbits &= 0xEF;
            else
                *pad1->padbits |= 0x10;

            if(state->buttons & CONT_DPAD_DOWN)
                *pad1->padbits &= 0xDF;
            else
                *pad1->padbits |= 0x20;

            if(state->buttons & CONT_DPAD_RIGHT)
                *pad1->padbits &= 0x7F;
            else
                *pad1->padbits |= 0x80;

            if(state->buttons & CONT_DPAD_LEFT)
                *pad1->padbits &= 0xBF;
            else
                *pad1->padbits |= 0x40;

            if(state->buttons & CONT_START)
                *pad1->padbits &= 0xF7;
            else
                *pad1->padbits |= 0x08;

            if(state->buttons & CONT_A)
                *pad1->padbits &= 0xFB;
            else
                *pad1->padbits |= 0x04;

            if(state->buttons & CONT_B)
                *pad1->padbits &= 0xFE;
            else
                *pad1->padbits |= 0x01;

            if(state->buttons & CONT_X)
                *(pad1->padbits + 1) &= 0xBF;
            else
                *(pad1->padbits + 1) |= 0x40;

            if(state->buttons & CONT_Y)
                *(pad1->padbits + 1) &= 0xDF;
            else
                *(pad1->padbits + 1) |= 0x20;

            if(state->rtrig > 20)
                *(pad1->padbits + 1) &= 0x7F;
            else
                *(pad1->padbits + 1) |= 0x80;

            if(state->ltrig > 20)
                *(pad1->padbits + 1) &= 0xF7;
            else
                *(pad1->padbits + 1) |= 0x08;

            if(state->joyx > 20)
                *pad1->padbits &= 0xFD;
            else
                *pad1->padbits |= 0x02;

            if(state->joyy > 20)
                *(pad1->padbits + 1) &= 0xEF;
            else
                *(pad1->padbits + 1) |= 0x10;

        }
    }

    YabauseExec();

 return 0;
}
