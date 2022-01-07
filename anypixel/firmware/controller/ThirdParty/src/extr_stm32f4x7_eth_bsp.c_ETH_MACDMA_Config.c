
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ETH_DMAArbitration; int ETH_TxDMABurstLength; int ETH_RxDMABurstLength; int ETH_FixedBurst; int ETH_AddressAlignedBeats; int ETH_SecondFrameOperate; int ETH_ForwardUndersizedGoodFrames; int ETH_ForwardErrorFrames; int ETH_TransmitStoreForward; int ETH_ReceiveStoreForward; int ETH_DropTCPIPChecksumErrorFrame; int ETH_ChecksumOffload; int ETH_UnicastFramesFilter; int ETH_MulticastFramesFilter; int ETH_PromiscuousMode; int ETH_BroadcastFramesReception; int ETH_ReceiveAll; int ETH_AutomaticPadCRCStrip; int ETH_RetryTransmission; int ETH_LoopbackMode; int ETH_AutoNegotiation; } ;


 int ENABLE ;
 int ETH_AddressAlignedBeats_Enable ;
 int ETH_AutoNegotiation_Enable ;
 int ETH_AutomaticPadCRCStrip_Disable ;
 int ETH_BroadcastFramesReception_Enable ;
 int ETH_ChecksumOffload_Enable ;
 int ETH_DMAArbitration_RoundRobin_RxTx_2_1 ;
 int ETH_DeInit () ;
 int ETH_DropTCPIPChecksumErrorFrame_Enable ;
 scalar_t__ ETH_ERROR ;
 int ETH_FixedBurst_Enable ;
 int ETH_ForwardErrorFrames_Disable ;
 int ETH_ForwardUndersizedGoodFrames_Disable ;
 scalar_t__ ETH_GetSoftwareResetStatus () ;
 scalar_t__ ETH_Init (TYPE_1__*,int) ;
 TYPE_1__ ETH_InitStructure ;
 int ETH_LoopbackMode_Disable ;
 int ETH_MulticastFramesFilter_Perfect ;
 int ETH_PromiscuousMode_Disable ;
 int ETH_ReceiveAll_Disable ;
 int ETH_ReceiveStoreForward_Enable ;
 int ETH_RetryTransmission_Disable ;
 int ETH_RxDMABurstLength_32Beat ;
 int ETH_SecondFrameOperate_Enable ;
 int ETH_SoftwareReset () ;
 int ETH_StructInit (TYPE_1__*) ;
 int ETH_TransmitStoreForward_Enable ;
 int ETH_TxDMABurstLength_32Beat ;
 int ETH_UnicastFramesFilter_Perfect ;
 scalar_t__ EthStatus ;
 int RCC_AHB1PeriphClockCmd (int,int ) ;
 int RCC_AHB1Periph_ETH_MAC ;
 int RCC_AHB1Periph_ETH_MAC_Rx ;
 int RCC_AHB1Periph_ETH_MAC_Tx ;
 scalar_t__ SET ;

__attribute__((used)) static void ETH_MACDMA_Config(void)
{

  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_ETH_MAC | RCC_AHB1Periph_ETH_MAC_Tx |
                        RCC_AHB1Periph_ETH_MAC_Rx, ENABLE);


  ETH_DeInit();


  ETH_SoftwareReset();


  while (ETH_GetSoftwareResetStatus() == SET);



  ETH_StructInit(&ETH_InitStructure);



  ETH_InitStructure.ETH_AutoNegotiation = ETH_AutoNegotiation_Enable;




  ETH_InitStructure.ETH_LoopbackMode = ETH_LoopbackMode_Disable;
  ETH_InitStructure.ETH_RetryTransmission = ETH_RetryTransmission_Disable;
  ETH_InitStructure.ETH_AutomaticPadCRCStrip = ETH_AutomaticPadCRCStrip_Disable;
  ETH_InitStructure.ETH_ReceiveAll = ETH_ReceiveAll_Disable;
  ETH_InitStructure.ETH_BroadcastFramesReception = ETH_BroadcastFramesReception_Enable;
  ETH_InitStructure.ETH_PromiscuousMode = ETH_PromiscuousMode_Disable;
  ETH_InitStructure.ETH_MulticastFramesFilter = ETH_MulticastFramesFilter_Perfect;
  ETH_InitStructure.ETH_UnicastFramesFilter = ETH_UnicastFramesFilter_Perfect;
  ETH_InitStructure.ETH_DropTCPIPChecksumErrorFrame = ETH_DropTCPIPChecksumErrorFrame_Enable;
  ETH_InitStructure.ETH_ReceiveStoreForward = ETH_ReceiveStoreForward_Enable;
  ETH_InitStructure.ETH_TransmitStoreForward = ETH_TransmitStoreForward_Enable;

  ETH_InitStructure.ETH_ForwardErrorFrames = ETH_ForwardErrorFrames_Disable;
  ETH_InitStructure.ETH_ForwardUndersizedGoodFrames = ETH_ForwardUndersizedGoodFrames_Disable;
  ETH_InitStructure.ETH_SecondFrameOperate = ETH_SecondFrameOperate_Enable;
  ETH_InitStructure.ETH_AddressAlignedBeats = ETH_AddressAlignedBeats_Enable;
  ETH_InitStructure.ETH_FixedBurst = ETH_FixedBurst_Enable;
  ETH_InitStructure.ETH_RxDMABurstLength = ETH_RxDMABurstLength_32Beat;
  ETH_InitStructure.ETH_TxDMABurstLength = ETH_TxDMABurstLength_32Beat;
  ETH_InitStructure.ETH_DMAArbitration = ETH_DMAArbitration_RoundRobin_RxTx_2_1;


  EthStatus = ETH_Init(&ETH_InitStructure, 1);
  if(EthStatus == ETH_ERROR)
     EthStatus = ETH_Init(&ETH_InitStructure, 2);
}
