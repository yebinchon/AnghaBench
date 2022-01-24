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
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_11__ {int PCR4; int PMEM4; int PATT4; int PIO4; } ;
struct TYPE_10__ {int FSMC_TCLRSetupTime; int FSMC_TARSetupTime; TYPE_3__* FSMC_IOSpaceTimingStruct; TYPE_2__* FSMC_AttributeSpaceTimingStruct; TYPE_1__* FSMC_CommonSpaceTimingStruct; scalar_t__ FSMC_Waitfeature; } ;
struct TYPE_9__ {int FSMC_WaitSetupTime; int FSMC_HoldSetupTime; int FSMC_HiZSetupTime; scalar_t__ FSMC_SetupTime; } ;
struct TYPE_8__ {int FSMC_WaitSetupTime; int FSMC_HoldSetupTime; int FSMC_HiZSetupTime; scalar_t__ FSMC_SetupTime; } ;
struct TYPE_7__ {int FSMC_WaitSetupTime; int FSMC_HoldSetupTime; int FSMC_HiZSetupTime; scalar_t__ FSMC_SetupTime; } ;
typedef  TYPE_4__ FSMC_PCCARDInitTypeDef ;

/* Variables and functions */
 TYPE_6__* FSMC_Bank4 ; 
 int FSMC_MemoryDataWidth_16b ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(FSMC_PCCARDInitTypeDef* FSMC_PCCARDInitStruct)
{
  /* Check the parameters */
  FUNC7(FUNC5(FSMC_PCCARDInitStruct->FSMC_Waitfeature));
  FUNC7(FUNC4(FSMC_PCCARDInitStruct->FSMC_TCLRSetupTime));
  FUNC7(FUNC3(FSMC_PCCARDInitStruct->FSMC_TARSetupTime));
 
  FUNC7(FUNC2(FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_SetupTime));
  FUNC7(FUNC6(FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_WaitSetupTime));
  FUNC7(FUNC1(FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HoldSetupTime));
  FUNC7(FUNC0(FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HiZSetupTime));
  
  FUNC7(FUNC2(FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_SetupTime));
  FUNC7(FUNC6(FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_WaitSetupTime));
  FUNC7(FUNC1(FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HoldSetupTime));
  FUNC7(FUNC0(FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HiZSetupTime));
  FUNC7(FUNC2(FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_SetupTime));
  FUNC7(FUNC6(FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_WaitSetupTime));
  FUNC7(FUNC1(FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_HoldSetupTime));
  FUNC7(FUNC0(FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_HiZSetupTime));
  
  /* Set the PCR4 register value according to FSMC_PCCARDInitStruct parameters */
  FSMC_Bank4->PCR4 = (uint32_t)FSMC_PCCARDInitStruct->FSMC_Waitfeature |
                     FSMC_MemoryDataWidth_16b |  
                     (FSMC_PCCARDInitStruct->FSMC_TCLRSetupTime << 9) |
                     (FSMC_PCCARDInitStruct->FSMC_TARSetupTime << 13);
            
  /* Set PMEM4 register value according to FSMC_CommonSpaceTimingStructure parameters */
  FSMC_Bank4->PMEM4 = (uint32_t)FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_SetupTime |
                      (FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_WaitSetupTime << 8) |
                      (FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HoldSetupTime << 16)|
                      (FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HiZSetupTime << 24); 
            
  /* Set PATT4 register value according to FSMC_AttributeSpaceTimingStructure parameters */
  FSMC_Bank4->PATT4 = (uint32_t)FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_SetupTime |
                      (FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_WaitSetupTime << 8) |
                      (FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HoldSetupTime << 16)|
                      (FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HiZSetupTime << 24);	
            
  /* Set PIO4 register value according to FSMC_IOSpaceTimingStructure parameters */
  FSMC_Bank4->PIO4 = (uint32_t)FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_SetupTime |
                     (FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_WaitSetupTime << 8) |
                     (FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_HoldSetupTime << 16)|
                     (FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_HiZSetupTime << 24);             
}