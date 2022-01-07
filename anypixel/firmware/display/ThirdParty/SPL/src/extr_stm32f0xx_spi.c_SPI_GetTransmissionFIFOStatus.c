
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int SR; } ;
typedef TYPE_1__ SPI_TypeDef ;


 int SPI_SR_FTLVL ;

uint16_t SPI_GetTransmissionFIFOStatus(SPI_TypeDef* SPIx)
{

  return (uint16_t)((SPIx->SR & SPI_SR_FTLVL));
}
