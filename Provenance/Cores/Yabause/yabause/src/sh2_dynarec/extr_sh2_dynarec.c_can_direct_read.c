
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int can_direct_read(int address)
{
  if((address&0xDFF00000)==0x200000) return 1;
  if((address&0xDE000000)==0x6000000) return 1;
  if((address&0xDFF00000)==0) return 1;
  return 0;
}
