
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timer {int all_bits; int high_bits; int low_bits; } ;



__attribute__((used)) static uint64_t safe_grab_timer_value(struct timer *t)
{

  return t->all_bits;





}
