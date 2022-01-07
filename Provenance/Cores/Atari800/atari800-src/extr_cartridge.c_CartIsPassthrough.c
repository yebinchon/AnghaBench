
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CARTRIDGE_ATRAX_SDX_128 ;
 int CARTRIDGE_ATRAX_SDX_64 ;
 int CARTRIDGE_SDX_128 ;
 int CARTRIDGE_SDX_64 ;

__attribute__((used)) static int CartIsPassthrough(int type)
{
 return type == CARTRIDGE_SDX_64 || type == CARTRIDGE_SDX_128 ||
        type == CARTRIDGE_ATRAX_SDX_64 || type == CARTRIDGE_ATRAX_SDX_128;
}
