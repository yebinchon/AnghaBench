#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int VCOS_UNSIGNED ;
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
struct TYPE_8__ {void* list_pending; void* list_free; TYPE_1__* pool; } ;
struct TYPE_9__ {TYPE_2__ request; int /*<<< orphan*/  timer; int /*<<< orphan*/  event; int /*<<< orphan*/  scheduling; int /*<<< orphan*/  thread; } ;
struct TYPE_7__ {int /*<<< orphan*/  link; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_CLOCK_PRIVATE_T ;
typedef  scalar_t__ MMAL_BOOL_T ;

/* Variables and functions */
 unsigned int CLOCK_REQUEST_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  MMAL_ENOSPC ; 
 scalar_t__ MMAL_FALSE ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_TRUE ; 
 int VCOS_AFFINITY_MASK ; 
 int /*<<< orphan*/  VCOS_EINVAL ; 
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmal_clock_worker_thread ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC11(MMAL_CLOCK_PRIVATE_T *private)
{
   unsigned int i;
   MMAL_BOOL_T timer_status = MMAL_FALSE;
   VCOS_STATUS_T event_status = VCOS_EINVAL;
   VCOS_UNSIGNED priority;

   timer_status = FUNC1(&private->timer, private);
   if (!timer_status)
   {
      FUNC0("failed to create timer %p", private);
      goto error;
   }

   event_status = FUNC6(&private->event, "mmal-clock sema", 0);
   if (event_status != VCOS_SUCCESS)
   {
      FUNC0("failed to create event semaphore %d", event_status);
      goto error;
   }

   private->request.list_free = FUNC3();
   private->request.list_pending = FUNC3();
   if (!private->request.list_free || !private->request.list_pending)
   {
      FUNC0("failed to create list %p %p", private->request.list_free, private->request.list_pending);
      goto error;
   }

   /* Populate the list of available request slots */
   for (i = 0; i < CLOCK_REQUEST_SLOTS; ++i)
      FUNC5(private->request.list_free, &private->request.pool[i].link);

   if (FUNC8(&private->thread, "mmal-clock thread", NULL,
                          mmal_clock_worker_thread, private) != VCOS_SUCCESS)
   {
      FUNC0("failed to create worker thread");
      goto error;
   }
   priority = FUNC9(&private->thread);
   FUNC10(&private->thread, 1 | (priority & VCOS_AFFINITY_MASK));

   private->scheduling = MMAL_TRUE;

   return MMAL_SUCCESS;

error:
   if (event_status == VCOS_SUCCESS) FUNC7(&private->event);
   if (timer_status) FUNC2(&private->timer);
   if (private->request.list_free) FUNC4(private->request.list_free);
   if (private->request.list_pending) FUNC4(private->request.list_pending);
   return MMAL_ENOSPC;
}