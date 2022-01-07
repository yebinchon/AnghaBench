
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ frame_count; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int CycloneInitIdle () ;
 TYPE_2__ Pico ;
 int fm68k_emulate (int ,int) ;
 int free (unsigned short**) ;
 scalar_t__ idledet_bads ;
 scalar_t__ idledet_count ;
 unsigned short** idledet_ptrs ;
 scalar_t__ idledet_start_frame ;
 scalar_t__* idlehit_addrs ;
 unsigned short** realloc (unsigned short**,int) ;

void SekInitIdleDet(void)
{
  unsigned short **tmp = realloc(idledet_ptrs, 0x200*4);
  if (tmp == ((void*)0)) {
    free(idledet_ptrs);
    idledet_ptrs = ((void*)0);
  }
  else
    idledet_ptrs = tmp;
  idledet_count = idledet_bads = 0;
  idledet_start_frame = Pico.m.frame_count + 360;
}
