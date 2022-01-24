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
typedef  scalar_t__ VC_CONTAINER_FOURCC_T ;
struct TYPE_2__ {scalar_t__ codec; int /*<<< orphan*/  encoding; } ;
typedef  int /*<<< orphan*/  MMAL_FOURCC_T ;

/* Variables and functions */
 scalar_t__ VC_CONTAINER_CODEC_UNKNOWN ; 
 TYPE_1__* encoding_table ; 

__attribute__((used)) static MMAL_FOURCC_T FUNC0(VC_CONTAINER_FOURCC_T codec)
{
   unsigned int i;
   for(i = 0; encoding_table[i].codec != VC_CONTAINER_CODEC_UNKNOWN; i++)
      if(encoding_table[i].codec == codec)
         break;
   return encoding_table[i].encoding;
}