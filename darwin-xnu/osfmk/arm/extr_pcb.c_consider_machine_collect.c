
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmap_gc () ;

void
consider_machine_collect(void)
{
 pmap_gc();
}
