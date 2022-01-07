
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_7__ {int w; } ;
struct TYPE_10__ {scalar_t__ ram; TYPE_2__ dac; } ;
struct TYPE_9__ {scalar_t__ bank; } ;
struct TYPE_8__ {TYPE_1__* regs; } ;
struct TYPE_6__ {int w; } ;


 TYPE_5__ cdc ;
 TYPE_4__ pcm ;
 TYPE_3__ scd ;

void pcm_ram_dma_w(unsigned int words)
{
  uint16 data;


  uint16 src_index = cdc.dac.w & 0x3ffe;


  uint16 dst_index = (scd.regs[0x0a>>1].w << 2) & 0xffe;


  scd.regs[0x0a>>1].w += (words >> 1);


  cdc.dac.w += (words << 1);


  while (words--)
  {

    data = *(uint16 *)(cdc.ram + src_index);


    *(uint16 *)(pcm.bank + dst_index) = data ;


    src_index = (src_index + 2) & 0x3ffe;


    dst_index = (dst_index + 2) & 0xffe;
  }
}
