#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int DCTRL; int /*<<< orphan*/  DLEN; int /*<<< orphan*/  DTIMER; } ;
struct TYPE_4__ {int SDIO_TransferDir; int SDIO_TransferMode; int SDIO_DPSM; scalar_t__ SDIO_DataBlockSize; int /*<<< orphan*/  SDIO_DataLength; int /*<<< orphan*/  SDIO_DataTimeOut; } ;
typedef  TYPE_1__ SDIO_DataInitTypeDef ;

/* Variables and functions */
 int DCTRL_CLEAR_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_3__* SDIO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(SDIO_DataInitTypeDef* SDIO_DataInitStruct)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  FUNC5(FUNC1(SDIO_DataInitStruct->SDIO_DataLength));
  FUNC5(FUNC0(SDIO_DataInitStruct->SDIO_DataBlockSize));
  FUNC5(FUNC3(SDIO_DataInitStruct->SDIO_TransferDir));
  FUNC5(FUNC4(SDIO_DataInitStruct->SDIO_TransferMode));
  FUNC5(FUNC2(SDIO_DataInitStruct->SDIO_DPSM));

/*---------------------------- SDIO DTIMER Configuration ---------------------*/
  /* Set the SDIO Data TimeOut value */
  SDIO->DTIMER = SDIO_DataInitStruct->SDIO_DataTimeOut;

/*---------------------------- SDIO DLEN Configuration -----------------------*/
  /* Set the SDIO DataLength value */
  SDIO->DLEN = SDIO_DataInitStruct->SDIO_DataLength;

/*---------------------------- SDIO DCTRL Configuration ----------------------*/  
  /* Get the SDIO DCTRL value */
  tmpreg = SDIO->DCTRL;
  /* Clear DEN, DTMODE, DTDIR and DBCKSIZE bits */
  tmpreg &= DCTRL_CLEAR_MASK;
  /* Set DEN bit according to SDIO_DPSM value */
  /* Set DTMODE bit according to SDIO_TransferMode value */
  /* Set DTDIR bit according to SDIO_TransferDir value */
  /* Set DBCKSIZE bits according to SDIO_DataBlockSize value */
  tmpreg |= (uint32_t)SDIO_DataInitStruct->SDIO_DataBlockSize | SDIO_DataInitStruct->SDIO_TransferDir
           | SDIO_DataInitStruct->SDIO_TransferMode | SDIO_DataInitStruct->SDIO_DPSM;

  /* Write to SDIO DCTRL */
  SDIO->DCTRL = tmpreg;
}