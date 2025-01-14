
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ mmal_id; } ;
typedef TYPE_1__ MMALOMX_PARAM_TRANSLATION_T ;


 unsigned int MMAL_COUNTOF (TYPE_1__ const**) ;
 scalar_t__ MMAL_PARAMETER_UNUSED ;
 TYPE_1__ const** mmalomx_param_list ;

const MMALOMX_PARAM_TRANSLATION_T *mmalomx_find_parameter_from_mmal_id(uint32_t id)
{
   unsigned int i, j;

   for (i = 0; i < MMAL_COUNTOF(mmalomx_param_list); i++)
   {
      for (j = 0; mmalomx_param_list[i][j].mmal_id != MMAL_PARAMETER_UNUSED; j++)
      {
         if (mmalomx_param_list[i][j].mmal_id == id)
            break;
      }
      if (mmalomx_param_list[i][j].mmal_id != MMAL_PARAMETER_UNUSED)
         break;
   }

   return i < MMAL_COUNTOF(mmalomx_param_list) ? &mmalomx_param_list[i][j] : ((void*)0);
}
