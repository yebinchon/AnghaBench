
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int default_regs_w (int,int) ;
 int mapper_64k_w (int) ;

__attribute__((used)) static void custom_alt_regs_w(uint32 address, uint32 data)
{

  if ((address >> 16) > 0x5f)
  {
    mapper_64k_w(data);
    return;
  }


  default_regs_w(address, data);
}
