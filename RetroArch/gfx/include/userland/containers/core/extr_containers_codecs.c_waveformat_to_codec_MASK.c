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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ VC_CONTAINER_FOURCC_T ;
struct TYPE_2__ {scalar_t__ codec; scalar_t__ id; } ;

/* Variables and functions */
 scalar_t__ VC_CONTAINER_CODEC_UNKNOWN ; 
 TYPE_1__* codec_to_wf_table ; 

VC_CONTAINER_FOURCC_T FUNC0(uint16_t waveformat_id)
{
   unsigned int i;
   for(i = 0; codec_to_wf_table[i].codec != VC_CONTAINER_CODEC_UNKNOWN; i++)
      if(codec_to_wf_table[i].id == waveformat_id) break;
   return codec_to_wf_table[i].codec;
}