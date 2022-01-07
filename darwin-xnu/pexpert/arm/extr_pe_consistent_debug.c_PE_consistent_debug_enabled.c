
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * consistent_debug_registry ;

int PE_consistent_debug_enabled(void)
{
 return (consistent_debug_registry != ((void*)0));
}
