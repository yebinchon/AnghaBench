
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* gunbits; } ;
typedef TYPE_1__ PerGun_struct ;



void PerGunTriggerPressed(PerGun_struct * gun)
{
   *(gun->gunbits) &= 0xEF;
}
