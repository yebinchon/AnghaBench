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
struct TYPE_5__ {unsigned int n_buffers; scalar_t__ fd; int /*<<< orphan*/  scaler; struct TYPE_5__* buffer_output; TYPE_1__* buffers; } ;
typedef  TYPE_2__ video4linux_t ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *data)
{
   video4linux_t *v4l = (video4linux_t*)data;

   unsigned i;
   for (i = 0; i < v4l->n_buffers; i++)
      if (FUNC3(v4l->buffers[i].start, v4l->buffers[i].length) == -1)
         FUNC0("[V4L2]: munmap failed.\n");

   if (v4l->fd >= 0)
      FUNC1(v4l->fd);

   FUNC2(v4l->buffer_output);
   FUNC4(&v4l->scaler);
   FUNC2(v4l);
}