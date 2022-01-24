#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_11__ {int* BTCR; } ;
struct TYPE_10__ {int* BWTR; } ;
struct TYPE_9__ {size_t FSMC_Bank; int FSMC_MemoryType; int FSMC_MemoryDataWidth; int FSMC_BurstAccessMode; int FSMC_AsynchronousWait; int FSMC_WaitSignalPolarity; int FSMC_WrapMode; int FSMC_WaitSignalActive; int FSMC_WriteOperation; int FSMC_WaitSignal; int FSMC_ExtendedMode; int FSMC_WriteBurst; TYPE_2__* FSMC_WriteTimingStruct; TYPE_1__* FSMC_ReadWriteTimingStruct; scalar_t__ FSMC_DataAddressMux; } ;
struct TYPE_8__ {int FSMC_AddressHoldTime; int FSMC_DataSetupTime; int FSMC_CLKDivision; int FSMC_DataLatency; int FSMC_AccessMode; scalar_t__ FSMC_AddressSetupTime; } ;
struct TYPE_7__ {int FSMC_AddressHoldTime; int FSMC_DataSetupTime; int FSMC_BusTurnAroundDuration; int FSMC_CLKDivision; int FSMC_DataLatency; int FSMC_AccessMode; scalar_t__ FSMC_AddressSetupTime; } ;
typedef  TYPE_3__ FSMC_NORSRAMInitTypeDef ;

/* Variables and functions */
 scalar_t__ BCR_FACCEN_SET ; 
 TYPE_6__* FSMC_Bank1 ; 
 TYPE_5__* FSMC_Bank1E ; 
 int FSMC_ExtendedMode_Enable ; 
 int FSMC_MemoryType_NOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (size_t) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

void FUNC21(FSMC_NORSRAMInitTypeDef* FSMC_NORSRAMInitStruct)
{ 
  /* Check the parameters */
  FUNC20(FUNC12(FSMC_NORSRAMInitStruct->FSMC_Bank));
  FUNC20(FUNC11(FSMC_NORSRAMInitStruct->FSMC_DataAddressMux));
  FUNC20(FUNC9(FSMC_NORSRAMInitStruct->FSMC_MemoryType));
  FUNC20(FUNC10(FSMC_NORSRAMInitStruct->FSMC_MemoryDataWidth));
  FUNC20(FUNC4(FSMC_NORSRAMInitStruct->FSMC_BurstAccessMode));
  FUNC20(FUNC3(FSMC_NORSRAMInitStruct->FSMC_AsynchronousWait));
  FUNC20(FUNC15(FSMC_NORSRAMInitStruct->FSMC_WaitSignalPolarity));
  FUNC20(FUNC17(FSMC_NORSRAMInitStruct->FSMC_WrapMode));
  FUNC20(FUNC16(FSMC_NORSRAMInitStruct->FSMC_WaitSignalActive));
  FUNC20(FUNC19(FSMC_NORSRAMInitStruct->FSMC_WriteOperation));
  FUNC20(FUNC14(FSMC_NORSRAMInitStruct->FSMC_WaitSignal));
  FUNC20(FUNC8(FSMC_NORSRAMInitStruct->FSMC_ExtendedMode));
  FUNC20(FUNC18(FSMC_NORSRAMInitStruct->FSMC_WriteBurst));  
  FUNC20(FUNC2(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AddressSetupTime));
  FUNC20(FUNC1(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AddressHoldTime));
  FUNC20(FUNC6(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_DataSetupTime));
  FUNC20(FUNC13(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_BusTurnAroundDuration));
  FUNC20(FUNC5(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_CLKDivision));
  FUNC20(FUNC7(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_DataLatency));
  FUNC20(FUNC0(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AccessMode)); 
  
  /* Bank1 NOR/SRAM control register configuration */ 
  FSMC_Bank1->BTCR[FSMC_NORSRAMInitStruct->FSMC_Bank] = 
            (uint32_t)FSMC_NORSRAMInitStruct->FSMC_DataAddressMux |
            FSMC_NORSRAMInitStruct->FSMC_MemoryType |
            FSMC_NORSRAMInitStruct->FSMC_MemoryDataWidth |
            FSMC_NORSRAMInitStruct->FSMC_BurstAccessMode |
            FSMC_NORSRAMInitStruct->FSMC_AsynchronousWait |
            FSMC_NORSRAMInitStruct->FSMC_WaitSignalPolarity |
            FSMC_NORSRAMInitStruct->FSMC_WrapMode |
            FSMC_NORSRAMInitStruct->FSMC_WaitSignalActive |
            FSMC_NORSRAMInitStruct->FSMC_WriteOperation |
            FSMC_NORSRAMInitStruct->FSMC_WaitSignal |
            FSMC_NORSRAMInitStruct->FSMC_ExtendedMode |
            FSMC_NORSRAMInitStruct->FSMC_WriteBurst;
  if(FSMC_NORSRAMInitStruct->FSMC_MemoryType == FSMC_MemoryType_NOR)
  {
    FSMC_Bank1->BTCR[FSMC_NORSRAMInitStruct->FSMC_Bank] |= (uint32_t)BCR_FACCEN_SET;
  }
  /* Bank1 NOR/SRAM timing register configuration */
  FSMC_Bank1->BTCR[FSMC_NORSRAMInitStruct->FSMC_Bank+1] = 
            (uint32_t)FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AddressSetupTime |
            (FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AddressHoldTime << 4) |
            (FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_DataSetupTime << 8) |
            (FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_BusTurnAroundDuration << 16) |
            (FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_CLKDivision << 20) |
            (FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_DataLatency << 24) |
             FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AccessMode;
            
    
  /* Bank1 NOR/SRAM timing register for write configuration, if extended mode is used */
  if(FSMC_NORSRAMInitStruct->FSMC_ExtendedMode == FSMC_ExtendedMode_Enable)
  {
    FUNC20(FUNC2(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AddressSetupTime));
    FUNC20(FUNC1(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AddressHoldTime));
    FUNC20(FUNC6(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_DataSetupTime));
    FUNC20(FUNC5(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_CLKDivision));
    FUNC20(FUNC7(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_DataLatency));
    FUNC20(FUNC0(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AccessMode));
    FSMC_Bank1E->BWTR[FSMC_NORSRAMInitStruct->FSMC_Bank] = 
              (uint32_t)FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AddressSetupTime |
              (FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AddressHoldTime << 4 )|
              (FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_DataSetupTime << 8) |
              (FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_CLKDivision << 20) |
              (FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_DataLatency << 24) |
               FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AccessMode;
  }
  else
  {
    FSMC_Bank1E->BWTR[FSMC_NORSRAMInitStruct->FSMC_Bank] = 0x0FFFFFFF;
  }
}