
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int _clock_delay_until_deadline_with_leeway (int ,int ,int ) ;

void
_clock_delay_until_deadline(
 uint64_t interval,
 uint64_t deadline)
{
 _clock_delay_until_deadline_with_leeway(interval, deadline, 0);
}
