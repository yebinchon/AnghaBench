
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENABLE ;
 int ETH_DMAReceptionCmd (int ) ;
 int ETH_DMATransmissionCmd (int ) ;
 int ETH_FlushTransmitFIFO () ;
 int ETH_MACReceptionCmd (int ) ;
 int ETH_MACTransmissionCmd (int ) ;

void ETH_Start(void)
{

  ETH_MACTransmissionCmd(ENABLE);


  ETH_MACReceptionCmd(ENABLE);


  ETH_FlushTransmitFIFO();


  ETH_DMATransmissionCmd(ENABLE);


  ETH_DMAReceptionCmd(ENABLE);
}
