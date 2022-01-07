
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int rom; } ;


 int READ_BYTE (int ,int) ;
 TYPE_1__ cart ;

__attribute__((used)) static uint32 mapper_t5740_r(uint32 address)
{




  if ((address & 0xff00) == 0x8100)
  {
    return READ_BYTE(cart.rom , (address & 0x7fff));
  }

  return READ_BYTE(cart.rom, address);
}
