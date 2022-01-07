
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pint_t ;
struct TYPE_8__ {int vint; int vptr; } ;
typedef TYPE_3__ pint_ret_t ;
struct TYPE_7__ {int* reg; } ;
struct TYPE_6__ {int pal; } ;
struct TYPE_9__ {TYPE_2__ video; TYPE_1__ m; int rom; } ;






 TYPE_5__ Pico ;

void PicoGetInternal(pint_t which, pint_ret_t *r)
{
  switch (which)
  {
    case 128: r->vptr = Pico.rom; break;
    case 129: r->vint = Pico.m.pal; break;
    case 130: r->vint = Pico.video.reg[12]&1; break;
    case 131: r->vint = Pico.m.pal && (Pico.video.reg[1]&8); break;
  }
}
