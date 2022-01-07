
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prot; } ;
struct TYPE_4__ {TYPE_1__ cartridge; } ;


 TYPE_2__ scd ;

__attribute__((used)) static unsigned int cart_prot_read_word(unsigned int address)
{
  return (scd.cartridge.prot | 0xff00);
}
