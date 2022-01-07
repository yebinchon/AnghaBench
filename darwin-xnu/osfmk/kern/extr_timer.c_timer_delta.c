
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int timer_t ;


 scalar_t__ timer_grab (int ) ;

uint64_t
timer_delta(timer_t timer, uint64_t *prev_in_cur_out)
{
 uint64_t old = *prev_in_cur_out;
 uint64_t new = *prev_in_cur_out = timer_grab(timer);
 return (new - old);
}
