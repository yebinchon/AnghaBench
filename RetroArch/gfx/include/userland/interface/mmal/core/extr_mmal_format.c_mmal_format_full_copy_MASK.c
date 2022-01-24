#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_ES_FORMAT_T ;

/* Variables and functions */
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__) ; 

MMAL_STATUS_T FUNC3(MMAL_ES_FORMAT_T *fmt_dst, MMAL_ES_FORMAT_T *fmt_src)
{
   FUNC1(fmt_dst, fmt_src);

   if (fmt_src->extradata_size)
   {
      MMAL_STATUS_T status = FUNC2(fmt_dst, fmt_src->extradata_size);
      if (status != MMAL_SUCCESS)
         return status;
      fmt_dst->extradata_size = fmt_src->extradata_size;
      FUNC0(fmt_dst->extradata, fmt_src->extradata, fmt_src->extradata_size);
   }
   return MMAL_SUCCESS;
}