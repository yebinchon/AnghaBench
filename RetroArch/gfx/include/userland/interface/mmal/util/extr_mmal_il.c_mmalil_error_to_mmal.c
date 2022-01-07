
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mmal; scalar_t__ omx; } ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef scalar_t__ MMAL_STATUS_T ;


 TYPE_1__* mmal_omx_error ;

MMAL_STATUS_T mmalil_error_to_mmal(OMX_ERRORTYPE error)
{
   unsigned int i;
   for(i = 0; mmal_omx_error[i].mmal != (MMAL_STATUS_T)-1; i++)
      if(mmal_omx_error[i].omx == error) break;
   return mmal_omx_error[i].mmal;
}
