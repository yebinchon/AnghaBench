#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ mmal; scalar_t__ omx; } ;
typedef  scalar_t__ OMX_COLORSPACETYPE ;

/* Variables and functions */
 scalar_t__ MMAL_COLOR_SPACE_UNKNOWN ; 
 TYPE_1__* mmal_omx_colorspace_coding_table ; 

uint32_t FUNC0(OMX_COLORSPACETYPE coding)
{
   unsigned int i;
   for(i = 0; mmal_omx_colorspace_coding_table[i].mmal != MMAL_COLOR_SPACE_UNKNOWN; i++)
      if(mmal_omx_colorspace_coding_table[i].omx == coding) break;
   return mmal_omx_colorspace_coding_table[i].mmal;
}