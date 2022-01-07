
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CR2; } ;
typedef TYPE_1__ SPI_TypeDef ;


 int CR2_LDMA_MASK ;
 int IS_SPI_ALL_PERIPH (TYPE_1__*) ;
 int IS_SPI_LAST_DMA_TRANSFER (int ) ;
 int assert_param (int ) ;

void SPI_LastDMATransferCmd(SPI_TypeDef* SPIx, uint16_t SPI_LastDMATransfer)
{

  assert_param(IS_SPI_ALL_PERIPH(SPIx));
  assert_param(IS_SPI_LAST_DMA_TRANSFER(SPI_LastDMATransfer));


  SPIx->CR2 &= CR2_LDMA_MASK;


  SPIx->CR2 |= SPI_LastDMATransfer;
}
