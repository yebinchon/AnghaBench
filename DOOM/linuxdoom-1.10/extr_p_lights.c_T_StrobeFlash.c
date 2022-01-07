
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ minlight; scalar_t__ maxlight; scalar_t__ darktime; scalar_t__ count; TYPE_1__* sector; scalar_t__ brighttime; } ;
typedef TYPE_2__ strobe_t ;
struct TYPE_4__ {scalar_t__ lightlevel; } ;



void T_StrobeFlash (strobe_t* flash)
{
    if (--flash->count)
 return;

    if (flash->sector->lightlevel == flash->minlight)
    {
 flash-> sector->lightlevel = flash->maxlight;
 flash->count = flash->brighttime;
    }
    else
    {
 flash-> sector->lightlevel = flash->minlight;
 flash->count =flash->darktime;
    }

}
