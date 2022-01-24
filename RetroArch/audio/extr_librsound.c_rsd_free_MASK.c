#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  cond_mutex; int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {TYPE_1__ thread; int /*<<< orphan*/  cb_lock; struct TYPE_6__* port; struct TYPE_6__* host; scalar_t__ fifo_buffer; } ;
typedef  TYPE_2__ rsound_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(rsound_t *rsound)
{
   FUNC2(rsound != NULL);
   if (rsound->fifo_buffer)
      FUNC0(rsound->fifo_buffer);
   if (rsound->host)
      FUNC1(rsound->host);
   if (rsound->port)
      FUNC1(rsound->port);

   FUNC4(rsound->thread.mutex);
   FUNC4(rsound->thread.cond_mutex);
   FUNC4(rsound->cb_lock);
   FUNC3(rsound->thread.cond);

   FUNC1(rsound);

   return 0;
}