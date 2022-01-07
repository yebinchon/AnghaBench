
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ETH_HashTableHigh; int ETH_HashTableLow; int ETH_PauseTime; int ETH_VLANTagIdentifier; int ETH_DescriptorSkipLength; int ETH_DMAArbitration; int ETH_TxDMABurstLength; int ETH_RxDMABurstLength; int ETH_FixedBurst; int ETH_AddressAlignedBeats; int ETH_SecondFrameOperate; int ETH_ReceiveThresholdControl; int ETH_ForwardUndersizedGoodFrames; int ETH_ForwardErrorFrames; int ETH_TransmitThresholdControl; int ETH_TransmitStoreForward; int ETH_FlushReceivedFrame; int ETH_ReceiveStoreForward; int ETH_DropTCPIPChecksumErrorFrame; int ETH_VLANTagComparison; int ETH_TransmitFlowControl; int ETH_ReceiveFlowControl; int ETH_UnicastPauseFrameDetect; int ETH_PauseLowThreshold; int ETH_ZeroQuantaPause; int ETH_UnicastFramesFilter; int ETH_MulticastFramesFilter; int ETH_PromiscuousMode; int ETH_DestinationAddrFilter; int ETH_BroadcastFramesReception; int ETH_PassControlFrames; int ETH_SourceAddrFilter; int ETH_ReceiveAll; int ETH_DeferralCheck; int ETH_BackOffLimit; int ETH_AutomaticPadCRCStrip; int ETH_RetryTransmission; int ETH_ChecksumOffload; int ETH_Mode; int ETH_LoopbackMode; int ETH_ReceiveOwn; int ETH_Speed; int ETH_CarrierSense; int ETH_InterFrameGap; int ETH_Jabber; int ETH_Watchdog; int ETH_AutoNegotiation; } ;
typedef TYPE_1__ ETH_InitTypeDef ;


 int ETH_AddressAlignedBeats_Enable ;
 int ETH_AutoNegotiation_Enable ;
 int ETH_AutomaticPadCRCStrip_Disable ;
 int ETH_BackOffLimit_10 ;
 int ETH_BroadcastFramesReception_Disable ;
 int ETH_CarrierSense_Enable ;
 int ETH_ChecksumOffload_Disable ;
 int ETH_DMAArbitration_RoundRobin_RxTx_1_1 ;
 int ETH_DeferralCheck_Disable ;
 int ETH_DestinationAddrFilter_Normal ;
 int ETH_DropTCPIPChecksumErrorFrame_Disable ;
 int ETH_FixedBurst_Enable ;
 int ETH_FlushReceivedFrame_Enable ;
 int ETH_ForwardErrorFrames_Disable ;
 int ETH_ForwardUndersizedGoodFrames_Disable ;
 int ETH_InterFrameGap_96Bit ;
 int ETH_Jabber_Enable ;
 int ETH_LoopbackMode_Disable ;
 int ETH_Mode_FullDuplex ;
 int ETH_MulticastFramesFilter_Perfect ;
 int ETH_PassControlFrames_BlockAll ;
 int ETH_PauseLowThreshold_Minus4 ;
 int ETH_PromiscuousMode_Disable ;
 int ETH_ReceiveAll_Disable ;
 int ETH_ReceiveFlowControl_Disable ;
 int ETH_ReceiveOwn_Enable ;
 int ETH_ReceiveStoreForward_Enable ;
 int ETH_ReceiveThresholdControl_64Bytes ;
 int ETH_RetryTransmission_Enable ;
 int ETH_RxDMABurstLength_32Beat ;
 int ETH_SecondFrameOperate_Disable ;
 int ETH_SourceAddrFilter_Disable ;
 int ETH_Speed_100M ;
 int ETH_TransmitFlowControl_Disable ;
 int ETH_TransmitStoreForward_Enable ;
 int ETH_TransmitThresholdControl_64Bytes ;
 int ETH_TxDMABurstLength_32Beat ;
 int ETH_UnicastFramesFilter_Perfect ;
 int ETH_UnicastPauseFrameDetect_Disable ;
 int ETH_VLANTagComparison_16Bit ;
 int ETH_Watchdog_Enable ;
 int ETH_ZeroQuantaPause_Disable ;

void ETH_StructInit(ETH_InitTypeDef* ETH_InitStruct)
{




  ETH_InitStruct->ETH_AutoNegotiation = ETH_AutoNegotiation_Enable;

  ETH_InitStruct->ETH_Watchdog = ETH_Watchdog_Enable;

  ETH_InitStruct->ETH_Jabber = ETH_Jabber_Enable;

  ETH_InitStruct->ETH_InterFrameGap = ETH_InterFrameGap_96Bit;

  ETH_InitStruct->ETH_CarrierSense = ETH_CarrierSense_Enable;

  ETH_InitStruct->ETH_Speed = ETH_Speed_100M;

  ETH_InitStruct->ETH_ReceiveOwn = ETH_ReceiveOwn_Enable;

  ETH_InitStruct->ETH_LoopbackMode = ETH_LoopbackMode_Disable;

  ETH_InitStruct->ETH_Mode = ETH_Mode_FullDuplex;

  ETH_InitStruct->ETH_ChecksumOffload = ETH_ChecksumOffload_Disable;

  ETH_InitStruct->ETH_RetryTransmission = ETH_RetryTransmission_Enable;

  ETH_InitStruct->ETH_AutomaticPadCRCStrip = ETH_AutomaticPadCRCStrip_Disable;

  ETH_InitStruct->ETH_BackOffLimit = ETH_BackOffLimit_10;

  ETH_InitStruct->ETH_DeferralCheck = ETH_DeferralCheck_Disable;

  ETH_InitStruct->ETH_ReceiveAll = ETH_ReceiveAll_Disable;

  ETH_InitStruct->ETH_SourceAddrFilter = ETH_SourceAddrFilter_Disable;

  ETH_InitStruct->ETH_PassControlFrames = ETH_PassControlFrames_BlockAll;

  ETH_InitStruct->ETH_BroadcastFramesReception = ETH_BroadcastFramesReception_Disable;

  ETH_InitStruct->ETH_DestinationAddrFilter = ETH_DestinationAddrFilter_Normal;

  ETH_InitStruct->ETH_PromiscuousMode = ETH_PromiscuousMode_Disable;

  ETH_InitStruct->ETH_MulticastFramesFilter = ETH_MulticastFramesFilter_Perfect;

  ETH_InitStruct->ETH_UnicastFramesFilter = ETH_UnicastFramesFilter_Perfect;

  ETH_InitStruct->ETH_HashTableHigh = 0x0;
  ETH_InitStruct->ETH_HashTableLow = 0x0;

  ETH_InitStruct->ETH_PauseTime = 0x0;
  ETH_InitStruct->ETH_ZeroQuantaPause = ETH_ZeroQuantaPause_Disable;
  ETH_InitStruct->ETH_PauseLowThreshold = ETH_PauseLowThreshold_Minus4;
  ETH_InitStruct->ETH_UnicastPauseFrameDetect = ETH_UnicastPauseFrameDetect_Disable;
  ETH_InitStruct->ETH_ReceiveFlowControl = ETH_ReceiveFlowControl_Disable;
  ETH_InitStruct->ETH_TransmitFlowControl = ETH_TransmitFlowControl_Disable;

  ETH_InitStruct->ETH_VLANTagComparison = ETH_VLANTagComparison_16Bit;
  ETH_InitStruct->ETH_VLANTagIdentifier = 0x0;




  ETH_InitStruct->ETH_DropTCPIPChecksumErrorFrame = ETH_DropTCPIPChecksumErrorFrame_Disable;

  ETH_InitStruct->ETH_ReceiveStoreForward = ETH_ReceiveStoreForward_Enable;

  ETH_InitStruct->ETH_FlushReceivedFrame = ETH_FlushReceivedFrame_Enable;

  ETH_InitStruct->ETH_TransmitStoreForward = ETH_TransmitStoreForward_Enable;

  ETH_InitStruct->ETH_TransmitThresholdControl = ETH_TransmitThresholdControl_64Bytes;

  ETH_InitStruct->ETH_ForwardErrorFrames = ETH_ForwardErrorFrames_Disable;

  ETH_InitStruct->ETH_ForwardUndersizedGoodFrames = ETH_ForwardUndersizedGoodFrames_Disable;

  ETH_InitStruct->ETH_ReceiveThresholdControl = ETH_ReceiveThresholdControl_64Bytes;


  ETH_InitStruct->ETH_SecondFrameOperate = ETH_SecondFrameOperate_Disable;

  ETH_InitStruct->ETH_AddressAlignedBeats = ETH_AddressAlignedBeats_Enable;

  ETH_InitStruct->ETH_FixedBurst = ETH_FixedBurst_Enable;

  ETH_InitStruct->ETH_RxDMABurstLength = ETH_RxDMABurstLength_32Beat;
  ETH_InitStruct->ETH_TxDMABurstLength = ETH_TxDMABurstLength_32Beat;

  ETH_InitStruct->ETH_DescriptorSkipLength = 0x0;

  ETH_InitStruct->ETH_DMAArbitration = ETH_DMAArbitration_RoundRobin_RxTx_1_1;
}
