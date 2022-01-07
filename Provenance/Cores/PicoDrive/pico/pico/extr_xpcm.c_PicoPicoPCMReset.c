
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xpcm_buffer; } ;


 TYPE_1__ PicoPicohw ;
 int memset (int ,int ,int) ;
 int quant ;
 scalar_t__ sample ;
 scalar_t__ sgn ;

void PicoPicoPCMReset(void)
{
  sample = sgn = 0;
  quant = 0x7f;
  memset(PicoPicohw.xpcm_buffer, 0, sizeof(PicoPicohw.xpcm_buffer));
}
