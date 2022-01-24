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
typedef  int /*<<< orphan*/  VCOS_UNSIGNED ;
struct TYPE_6__ {int /*<<< orphan*/  event; int /*<<< orphan*/  sema; TYPE_1__* out_list; } ;
struct TYPE_5__ {int nOutputPortIndex; struct TYPE_5__* pAppPrivate; } ;
typedef  TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef  TYPE_2__ COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  ILCLIENT_FILL_BUFFER_DONE ; 
 int /*<<< orphan*/  VCOS_OR_CONSUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

OMX_BUFFERHEADERTYPE *FUNC3(COMPONENT_T *comp, int portIndex, int block)
{
   OMX_BUFFERHEADERTYPE *ret = NULL, *prev = NULL;
   VCOS_UNSIGNED set;

   do {
      FUNC2(&comp->sema);
      ret = comp->out_list;
      while(ret != NULL && ret->nOutputPortIndex != portIndex)
      {
         prev = ret;
         ret = ret->pAppPrivate;
      }

      if(ret)
      {
         if(prev == NULL)
            comp->out_list = ret->pAppPrivate;
         else
            prev->pAppPrivate = ret->pAppPrivate;

         ret->pAppPrivate = NULL;
      }
      FUNC1(&comp->sema);

      if(block && !ret)
         FUNC0(&comp->event, ILCLIENT_FILL_BUFFER_DONE, VCOS_OR_CONSUME, -1, &set);

   } while(block && !ret);

   return ret;
}