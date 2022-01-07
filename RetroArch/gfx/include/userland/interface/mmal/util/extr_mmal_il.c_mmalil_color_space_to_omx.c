
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ mmal; int omx; } ;
typedef int OMX_COLORSPACETYPE ;


 scalar_t__ MMAL_COLOR_SPACE_UNKNOWN ;
 TYPE_1__* mmal_omx_colorspace_coding_table ;

OMX_COLORSPACETYPE mmalil_color_space_to_omx(uint32_t coding)
{
   unsigned int i;
   for(i = 0; mmal_omx_colorspace_coding_table[i].mmal != MMAL_COLOR_SPACE_UNKNOWN; i++)
      if(mmal_omx_colorspace_coding_table[i].mmal == coding) break;
   return mmal_omx_colorspace_coding_table[i].omx;
}
