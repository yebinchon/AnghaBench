
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Start_DMA_Transfer (int ,int ,int) ;
 int TLC59401_CHANNELS ;
 int TM_SPI_WriteMulti (int ,int) ;
 int rxpacket ;
 int txpacket ;

void TLC59401_Send(void) {

     TM_SPI_WriteMulti(txpacket, TLC59401_CHANNELS*3/2);



}
