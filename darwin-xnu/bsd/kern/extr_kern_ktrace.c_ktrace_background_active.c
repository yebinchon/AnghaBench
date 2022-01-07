
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KTRACE_STATE_BG ;
 scalar_t__ ktrace_state ;

bool
ktrace_background_active(void)
{
 return (ktrace_state == KTRACE_STATE_BG);
}
