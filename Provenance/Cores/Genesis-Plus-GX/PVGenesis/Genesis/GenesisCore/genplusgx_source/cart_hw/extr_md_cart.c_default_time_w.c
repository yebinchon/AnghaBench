
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int mapper_64k_multi_w (int) ;
 int mapper_sega_w (int) ;

__attribute__((used)) static void default_time_w(uint32 address, uint32 data)
{
  if (address < 0xa13040)
  {

    mapper_64k_multi_w(address);
    return;
  }


  mapper_sega_w(data);
}
