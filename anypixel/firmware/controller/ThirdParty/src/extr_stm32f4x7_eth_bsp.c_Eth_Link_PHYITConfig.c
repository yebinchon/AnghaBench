
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int ETH_ERROR ;
 int ETH_ReadPHYRegister (int ,int ) ;
 int ETH_SUCCESS ;
 int ETH_WritePHYRegister (int ,int ,int ) ;
 int PHY_MICR ;
 int PHY_MICR_INT_EN ;
 int PHY_MICR_INT_OE ;
 int PHY_MISR ;
 scalar_t__ PHY_MISR_LINK_INT_EN ;

uint32_t Eth_Link_PHYITConfig(uint16_t PHYAddress)
{
  uint16_t tmpreg = 0;


  tmpreg = ETH_ReadPHYRegister(PHYAddress, PHY_MICR);


  tmpreg |= (uint16_t)(PHY_MICR_INT_EN | PHY_MICR_INT_OE);
  if(!(ETH_WritePHYRegister(PHYAddress, PHY_MICR, tmpreg)))
  {

    return ETH_ERROR;
  }


  tmpreg = ETH_ReadPHYRegister(PHYAddress, PHY_MISR);


  tmpreg |= (uint16_t)PHY_MISR_LINK_INT_EN;
  if(!(ETH_WritePHYRegister(PHYAddress, PHY_MISR, tmpreg)))
  {

    return ETH_ERROR;
  }

  return ETH_SUCCESS;
}
