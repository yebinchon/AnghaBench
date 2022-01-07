
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cdc_dma_update () ;

__attribute__((used)) static void pcd_dma_event(unsigned int now)
{
  cdc_dma_update();
}
