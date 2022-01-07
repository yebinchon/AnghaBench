
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* timer_t ;
struct TYPE_3__ {int low_bits; scalar_t__ high_bits; int all_bits; } ;



__attribute__((used)) static void
timer_advance(timer_t timer, uint64_t delta)
{

 timer->all_bits += delta;
}
