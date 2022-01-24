#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int /*<<< orphan*/  media_time; } ;
struct TYPE_5__ {TYPE_1__ data; int /*<<< orphan*/  magic; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_CLOCK_EVENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_CLOCK_EVENT_MAGIC ; 
 int /*<<< orphan*/  MMAL_CLOCK_EVENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC1(MMAL_PORT_T *port, int64_t media_time)
{
   MMAL_CLOCK_EVENT_T event;

   event.id = MMAL_CLOCK_EVENT_TIME;
   event.magic = MMAL_CLOCK_EVENT_MAGIC;
   event.data.media_time = media_time;

   return FUNC0(port, &event);
}