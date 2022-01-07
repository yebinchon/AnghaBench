
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xpcm_buffer; int xpcm_ptr; } ;


 int PicoPicoPCMReset () ;
 TYPE_1__ PicoPicohw ;

__attribute__((used)) static void PicoResetPico(void)
{
  PicoPicoPCMReset();
  PicoPicohw.xpcm_ptr = PicoPicohw.xpcm_buffer;
}
