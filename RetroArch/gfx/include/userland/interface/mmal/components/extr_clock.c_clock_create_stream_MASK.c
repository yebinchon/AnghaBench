#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  std_filter; int /*<<< orphan*/  avg_filter; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  MMAL_BOOL_T ;
typedef  TYPE_1__ CLOCK_STREAM_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 int /*<<< orphan*/  MMAL_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int,char*) ; 

__attribute__((used)) static MMAL_BOOL_T FUNC3(CLOCK_STREAM_T **stream, uint32_t id, uint32_t filter_length)
{
   CLOCK_STREAM_T *s = FUNC2(1, sizeof(CLOCK_STREAM_T), "clock stream");
   if (!s)
   {
      FUNC0("failed to allocate stream");
      return MMAL_FALSE;
   }

   s->id = id;

   FUNC1(&s->avg_filter, filter_length);
   FUNC1(&s->std_filter, filter_length);

   *stream = s;
   return MMAL_TRUE;
}