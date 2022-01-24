#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* dts; void* pts; scalar_t__ flags; scalar_t__ offset; scalar_t__ length; } ;
typedef  TYPE_1__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 void* MMAL_TIME_UNKNOWN ; 

void FUNC0(MMAL_BUFFER_HEADER_T *header)
{
   header->length = 0;
   header->offset = 0;
   header->flags = 0;
   header->pts = MMAL_TIME_UNKNOWN;
   header->dts = MMAL_TIME_UNKNOWN;
}