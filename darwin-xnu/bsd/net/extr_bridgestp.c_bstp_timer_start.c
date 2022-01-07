
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bstp_timer {int active; scalar_t__ latched; int value; } ;



__attribute__((used)) static void
bstp_timer_start(struct bstp_timer *t, uint16_t v)
{
 t->value = v;
 t->active = 1;
 t->latched = 0;
}
