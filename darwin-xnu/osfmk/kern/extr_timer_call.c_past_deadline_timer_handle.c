
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int past_deadline_deltas ;
 scalar_t__ past_deadline_longest ;
 scalar_t__ past_deadline_shortest ;
 scalar_t__ past_deadline_timer_adjustment ;
 int past_deadline_timers ;

__attribute__((used)) static uint64_t
past_deadline_timer_handle(uint64_t deadline, uint64_t ctime)
{
    uint64_t delta = (ctime - deadline);

    past_deadline_timers++;
    past_deadline_deltas += delta;
    if (delta > past_deadline_longest)
 past_deadline_longest = deadline;
    if (delta < past_deadline_shortest)
 past_deadline_shortest = delta;

    return (ctime + past_deadline_timer_adjustment);
}
