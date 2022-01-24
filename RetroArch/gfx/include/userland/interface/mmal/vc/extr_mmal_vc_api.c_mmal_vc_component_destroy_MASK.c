#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_9__ {scalar_t__ status; } ;
typedef  TYPE_2__ mmal_worker_reply ;
struct TYPE_10__ {int /*<<< orphan*/  header; int /*<<< orphan*/  component_handle; } ;
typedef  TYPE_3__ mmal_worker_component_destroy ;
struct TYPE_12__ {int /*<<< orphan*/  callback_queue; int /*<<< orphan*/  component_handle; } ;
struct TYPE_11__ {TYPE_1__* priv; scalar_t__ clock_num; int /*<<< orphan*/  clock; scalar_t__ output_num; int /*<<< orphan*/  output; scalar_t__ input_num; int /*<<< orphan*/  input; } ;
struct TYPE_8__ {TYPE_5__* module; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_4__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_WORKER_COMPONENT_DESTROY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC9(MMAL_COMPONENT_T *component)
{
   MMAL_STATUS_T status;
   mmal_worker_component_destroy msg;
   mmal_worker_reply reply;
   size_t replylen = sizeof(reply);

   FUNC7(component && component->priv && component->priv->module);

   msg.component_handle = component->priv->module->component_handle;

   status = FUNC6(FUNC4(), &msg.header, sizeof(msg),
         MMAL_WORKER_COMPONENT_DESTROY,
         &reply, &replylen, MMAL_FALSE);

   if (status == MMAL_SUCCESS)
   {
      FUNC7(replylen == sizeof(reply));
      status = reply.status;
   }
   if (status != MMAL_SUCCESS)
   {
      FUNC0("failed to destroy component - reason %d", status );
      goto fail;
   }

   if(component->input_num)
      FUNC1(component->input, component->input_num);
   if(component->output_num)
      FUNC1(component->output, component->output_num);
   if(component->clock_num)
      FUNC1(component->clock, component->clock_num);

   FUNC2(component->priv->module->callback_queue);

   FUNC8(component->priv->module);
   component->priv->module = NULL;

fail:
   // no longer require videocore
   FUNC5();
   FUNC3();
   return status;
}