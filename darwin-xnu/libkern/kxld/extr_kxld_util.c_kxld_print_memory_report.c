
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bytes_allocated ;
 scalar_t__ bytes_freed ;
 int kKxldLogExplicit ;
 int kKxldLogLinking ;
 int kxld_log (int ,int ,char*,int,int ,int,int,scalar_t__,scalar_t__) ;
 int num_allocations ;
 int num_frees ;

void
kxld_print_memory_report(void)
{
}
