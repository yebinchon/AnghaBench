
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_PARAMETER (int) ;
 int drain_mode ;

void
enter_drain_mode(int sig)
{
    UNUSED_PARAMETER(sig);
    drain_mode = 1;
}
