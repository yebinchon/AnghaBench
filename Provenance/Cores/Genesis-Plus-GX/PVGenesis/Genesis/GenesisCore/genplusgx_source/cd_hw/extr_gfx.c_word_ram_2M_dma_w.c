
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_6__ {int w; } ;
struct TYPE_8__ {scalar_t__ ram; TYPE_2__ dac; } ;
struct TYPE_7__ {scalar_t__ word_ram_2M; TYPE_1__* regs; } ;
struct TYPE_5__ {int w; } ;


 TYPE_4__ cdc ;
 TYPE_3__ scd ;

void word_ram_2M_dma_w(unsigned int words)
{
  uint16 data;


  uint16 src_index = cdc.dac.w & 0x3ffe;


  uint32 dst_index = (scd.regs[0x0a>>1].w << 3) & 0x3fffe;


  scd.regs[0x0a>>1].w += (words >> 2);


  cdc.dac.w += (words << 1);


  while (words--)
  {

    data = *(uint16 *)(cdc.ram + src_index);







    *(uint16 *)(scd.word_ram_2M + dst_index) = data ;


    src_index = (src_index + 2) & 0x3ffe;


    dst_index = (dst_index + 2) & 0x3fffe;
  }
}
