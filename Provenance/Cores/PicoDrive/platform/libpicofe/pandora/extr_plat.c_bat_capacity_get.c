
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_int_from_file (char*) ;

__attribute__((used)) static int bat_capacity_get(void)
{
 return read_int_from_file("/sys/class/power_supply/bq27500-0/capacity");
}
