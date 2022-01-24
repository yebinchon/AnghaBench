#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ length; int /*<<< orphan*/ * last; int /*<<< orphan*/ * first; } ;
struct TYPE_7__ {TYPE_1__ list; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ MMAL_LIST_T ;
typedef  TYPE_2__ MMAL_LIST_PRIVATE_T ;

/* Variables and functions */
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

MMAL_LIST_T* FUNC5(void)
{
   MMAL_LIST_PRIVATE_T *private;

   private = FUNC1(sizeof(MMAL_LIST_PRIVATE_T), "mmal-list");
   if (private == NULL)
      goto error;

   if (FUNC2(&private->lock, "mmal-list lock") != VCOS_SUCCESS)
      goto error;

   /* lock to keep coverity happy */
   FUNC3(&private->lock);
   private->list.first = NULL;
   private->list.last = NULL;
   private->list.length = 0;
   FUNC4(&private->lock);

   return &private->list;

error:
   FUNC0(private);
   return NULL;
}