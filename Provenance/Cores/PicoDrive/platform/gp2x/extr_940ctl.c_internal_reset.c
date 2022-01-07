
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ST_address ;
 int addr_A1 ;
 scalar_t__ writebuff_ptr ;

__attribute__((used)) static void internal_reset(void)
{
 writebuff_ptr = 0;
 ST_address = addr_A1 = -1;
}
