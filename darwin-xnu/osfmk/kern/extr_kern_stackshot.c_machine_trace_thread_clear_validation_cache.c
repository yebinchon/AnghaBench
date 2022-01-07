
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int validate_next_addr ;

void
machine_trace_thread_clear_validation_cache(void)
{
 validate_next_addr = TRUE;
}
