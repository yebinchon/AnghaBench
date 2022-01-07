
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SPI_CRCPolynomial; int SPI_FirstBit; int SPI_BaudRatePrescaler; int SPI_NSS; int SPI_CPHA; int SPI_CPOL; int SPI_DataSize; int SPI_Mode; int SPI_Direction; } ;
typedef TYPE_1__ SPI_InitTypeDef ;


 int SPI_BaudRatePrescaler_2 ;
 int SPI_CPHA_1Edge ;
 int SPI_CPOL_Low ;
 int SPI_DataSize_8b ;
 int SPI_Direction_2Lines_FullDuplex ;
 int SPI_FirstBit_MSB ;
 int SPI_Mode_Slave ;
 int SPI_NSS_Hard ;

void SPI_StructInit(SPI_InitTypeDef* SPI_InitStruct)
{


  SPI_InitStruct->SPI_Direction = SPI_Direction_2Lines_FullDuplex;

  SPI_InitStruct->SPI_Mode = SPI_Mode_Slave;

  SPI_InitStruct->SPI_DataSize = SPI_DataSize_8b;

  SPI_InitStruct->SPI_CPOL = SPI_CPOL_Low;

  SPI_InitStruct->SPI_CPHA = SPI_CPHA_1Edge;

  SPI_InitStruct->SPI_NSS = SPI_NSS_Hard;

  SPI_InitStruct->SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_2;

  SPI_InitStruct->SPI_FirstBit = SPI_FirstBit_MSB;

  SPI_InitStruct->SPI_CRCPolynomial = 7;
}
