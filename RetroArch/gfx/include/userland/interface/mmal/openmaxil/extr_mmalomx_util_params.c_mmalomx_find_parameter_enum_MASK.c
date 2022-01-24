#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ mmal_id; } ;
typedef  TYPE_1__ MMALOMX_PARAM_TRANSLATION_T ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__ const**) ; 
 scalar_t__ MMAL_PARAMETER_UNUSED ; 
 TYPE_1__ const** mmalomx_param_list ; 

const MMALOMX_PARAM_TRANSLATION_T *FUNC1(unsigned int index)
{
   unsigned int i, j;

   for (i = 0; i < FUNC0(mmalomx_param_list); i++)
   {
      for (j = 0; mmalomx_param_list[i][j].mmal_id != MMAL_PARAMETER_UNUSED; j++)
      {
         if (!index--)
            break;
      }
      if (mmalomx_param_list[i][j].mmal_id != MMAL_PARAMETER_UNUSED)
         break;
   }

   return i < FUNC0(mmalomx_param_list) ? &mmalomx_param_list[i][j] : NULL;
}