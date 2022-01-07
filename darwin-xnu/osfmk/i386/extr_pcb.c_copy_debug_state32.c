
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dr7; int dr6; int dr3; int dr2; int dr1; int dr0; int dr5; int dr4; } ;
typedef TYPE_1__ x86_debug_state32_t ;
typedef scalar_t__ boolean_t ;



void
copy_debug_state32(
  x86_debug_state32_t *src,
  x86_debug_state32_t *target,
  boolean_t all)
{
 if (all) {
  target->dr4 = src->dr4;
  target->dr5 = src->dr5;
 }

 target->dr0 = src->dr0;
 target->dr1 = src->dr1;
 target->dr2 = src->dr2;
 target->dr3 = src->dr3;
 target->dr6 = src->dr6;
 target->dr7 = src->dr7;
}
