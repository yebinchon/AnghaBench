
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ pointer ;


 scalar_t__ BiosRom ;
 scalar_t__ HighWram ;
 scalar_t__ LowWram ;
 int assert (int) ;

__attribute__((used)) static pointer map_address(u32 address)
{
  if((address&0xDFF00000)==0x200000) return (pointer)LowWram+(address&0xFFFFF);
  if((address&0xDE000000)==0x6000000) return (pointer)HighWram+(address&0xFFFFF);
  assert((address&0xDFF00000)==0);
  return (pointer)BiosRom+(address&0x8FFFF);
}
