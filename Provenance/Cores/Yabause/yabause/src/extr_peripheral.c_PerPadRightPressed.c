
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* padbits; } ;
typedef TYPE_1__ PerPad_struct ;


 int SMPCLOG (char*) ;

void PerPadRightPressed(PerPad_struct * pad) {
   *pad->padbits &= 0x7F;
   SMPCLOG("Right\n");
}
