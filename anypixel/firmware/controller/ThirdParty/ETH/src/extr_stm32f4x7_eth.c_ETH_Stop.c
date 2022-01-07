
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISABLE ;
 int ETH_DMAReceptionCmd (int ) ;
 int ETH_DMATransmissionCmd (int ) ;
 int ETH_FlushTransmitFIFO () ;
 int ETH_MACReceptionCmd (int ) ;
 int ETH_MACTransmissionCmd (int ) ;

void ETH_Stop(void)
{

  ETH_DMATransmissionCmd(DISABLE);


  ETH_DMAReceptionCmd(DISABLE);


  ETH_MACReceptionCmd(DISABLE);


  ETH_FlushTransmitFIFO();


  ETH_MACTransmissionCmd(DISABLE);
}
