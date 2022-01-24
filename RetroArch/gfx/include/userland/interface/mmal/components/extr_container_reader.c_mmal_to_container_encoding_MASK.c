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
typedef  scalar_t__ VC_CONTAINER_FOURCC_T ;
struct TYPE_2__ {scalar_t__ codec; scalar_t__ encoding; } ;

/* Variables and functions */
 scalar_t__ VC_CONTAINER_CODEC_UNKNOWN ; 
 TYPE_1__* encoding_table ; 

__attribute__((used)) static VC_CONTAINER_FOURCC_T FUNC0(uint32_t encoding)
{
   unsigned int i;
   for(i = 0; encoding_table[i].codec != VC_CONTAINER_CODEC_UNKNOWN; i++)
      if(encoding_table[i].encoding == encoding)
         break;
   return encoding_table[i].codec;
}