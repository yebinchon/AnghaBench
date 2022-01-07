
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int sram; } ;


 int WRITE_BYTE (int ,int,int) ;
 int m68k_unused_8_w (int,int) ;
 TYPE_1__ sram ;

__attribute__((used)) static void topshooter_w(uint32 address, uint32 data)
{
  if (address >= 0x202000)
  {
    WRITE_BYTE(sram.sram , address & 0xffff, data);
    return;
  }

  m68k_unused_8_w(address, data);
}
