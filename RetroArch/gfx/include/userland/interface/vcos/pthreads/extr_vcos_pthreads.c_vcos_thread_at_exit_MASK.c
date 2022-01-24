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
struct TYPE_5__ {TYPE_1__* at_exit; } ;
typedef  TYPE_2__ VCOS_THREAD_T ;
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
struct TYPE_4__ {void (* pfn ) (void*) ;void* cxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_EINVAL ; 
 int /*<<< orphan*/  VCOS_ENOSPC ; 
 int VCOS_MAX_EXIT_HANDLERS ; 
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 () ; 

extern VCOS_STATUS_T FUNC2(void (*pfn)(void*), void *cxt)
{
   int i;
   VCOS_THREAD_T *self = FUNC1();
   if (!self)
   {
      FUNC0(0);
      return VCOS_EINVAL;
   }
   for (i=0; i<VCOS_MAX_EXIT_HANDLERS; i++)
   {
      if (self->at_exit[i].pfn == NULL)
      {
         self->at_exit[i].pfn = pfn;
         self->at_exit[i].cxt = cxt;
         return VCOS_SUCCESS;
      }
   }
   return VCOS_ENOSPC;
}