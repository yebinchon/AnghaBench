
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ktrace_single_threaded ;

void
ktrace_start_single_threaded(void)
{
 ktrace_single_threaded = 1;
}
