#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_7__ {int SPI_Mode; int SPI_DataSize; int SPI_CPOL; int SPI_CPHA; int SPI_NSS; int SPI_BaudRatePrescaler; int SPI_FirstBit; int /*<<< orphan*/  SPI_CRCPolynomial; scalar_t__ SPI_Direction; } ;
struct TYPE_6__ {int /*<<< orphan*/  CRCPR; scalar_t__ I2SCFGR; scalar_t__ CR1; } ;
typedef  TYPE_1__ SPI_TypeDef ;
typedef  TYPE_2__ SPI_InitTypeDef ;

/* Variables and functions */
 scalar_t__ CR1_CLEAR_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ SPI_I2SCFGR_I2SMOD ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct)
{
  uint16_t tmpreg = 0;
  
  /* check the parameters */
  FUNC10(FUNC0(SPIx));
  
  /* Check the SPI parameters */
  FUNC10(FUNC6(SPI_InitStruct->SPI_Direction));
  FUNC10(FUNC8(SPI_InitStruct->SPI_Mode));
  FUNC10(FUNC5(SPI_InitStruct->SPI_DataSize));
  FUNC10(FUNC3(SPI_InitStruct->SPI_CPOL));
  FUNC10(FUNC2(SPI_InitStruct->SPI_CPHA));
  FUNC10(FUNC9(SPI_InitStruct->SPI_NSS));
  FUNC10(FUNC1(SPI_InitStruct->SPI_BaudRatePrescaler));
  FUNC10(FUNC7(SPI_InitStruct->SPI_FirstBit));
  FUNC10(FUNC4(SPI_InitStruct->SPI_CRCPolynomial));

/*---------------------------- SPIx CR1 Configuration ------------------------*/
  /* Get the SPIx CR1 value */
  tmpreg = SPIx->CR1;
  /* Clear BIDIMode, BIDIOE, RxONLY, SSM, SSI, LSBFirst, BR, MSTR, CPOL and CPHA bits */
  tmpreg &= CR1_CLEAR_MASK;
  /* Configure SPIx: direction, NSS management, first transmitted bit, BaudRate prescaler
     master/salve mode, CPOL and CPHA */
  /* Set BIDImode, BIDIOE and RxONLY bits according to SPI_Direction value */
  /* Set SSM, SSI and MSTR bits according to SPI_Mode and SPI_NSS values */
  /* Set LSBFirst bit according to SPI_FirstBit value */
  /* Set BR bits according to SPI_BaudRatePrescaler value */
  /* Set CPOL bit according to SPI_CPOL value */
  /* Set CPHA bit according to SPI_CPHA value */
  tmpreg |= (uint16_t)((uint32_t)SPI_InitStruct->SPI_Direction | SPI_InitStruct->SPI_Mode |
                  SPI_InitStruct->SPI_DataSize | SPI_InitStruct->SPI_CPOL |  
                  SPI_InitStruct->SPI_CPHA | SPI_InitStruct->SPI_NSS |  
                  SPI_InitStruct->SPI_BaudRatePrescaler | SPI_InitStruct->SPI_FirstBit);
  /* Write to SPIx CR1 */
  SPIx->CR1 = tmpreg;

  /* Activate the SPI mode (Reset I2SMOD bit in I2SCFGR register) */
  SPIx->I2SCFGR &= (uint16_t)~((uint16_t)SPI_I2SCFGR_I2SMOD);
/*---------------------------- SPIx CRCPOLY Configuration --------------------*/
  /* Write to SPIx CRCPOLY */
  SPIx->CRCPR = SPI_InitStruct->SPI_CRCPolynomial;
}