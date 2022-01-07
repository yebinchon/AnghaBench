
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_ring_try_empty () ;
 int console_suspended ;

void
console_suspend()
{
 console_suspended = 1;
 console_ring_try_empty();
}
