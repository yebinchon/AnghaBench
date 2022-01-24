#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_17__ {void* userdata; } ;
struct TYPE_16__ {void* userdata; } ;
struct TYPE_15__ {int input_num; int output_num; TYPE_8__** output; TYPE_8__** input; TYPE_9__* control; } ;
struct TYPE_13__ {unsigned int input_num; unsigned int output_num; scalar_t__ time_setup; TYPE_9__* control; TYPE_8__** output; int /*<<< orphan*/ ** output_pool; int /*<<< orphan*/ ** output_queue; TYPE_8__** input; int /*<<< orphan*/ ** input_pool; TYPE_3__* component; } ;
struct TYPE_14__ {TYPE_1__ wrapper; int /*<<< orphan*/  sema; } ;
typedef  TYPE_1__ MMAL_WRAPPER_T ;
typedef  TYPE_2__ MMAL_WRAPPER_PRIVATE_T ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_QUEUE_T ;
typedef  int /*<<< orphan*/  MMAL_POOL_T ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__**,char const*) ; 
 scalar_t__ MMAL_EINVAL ; 
 scalar_t__ MMAL_ENOMEM ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ VCOS_SUCCESS ; 
 scalar_t__ FUNC1 (char const*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC4 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  mmal_wrapper_bh_release_cb ; 
 int /*<<< orphan*/  mmal_wrapper_control_cb ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_2__* FUNC8 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

MMAL_STATUS_T FUNC12(MMAL_WRAPPER_T **ctx, const char *name)
{
   MMAL_STATUS_T status;
   MMAL_COMPONENT_T *component;
   MMAL_WRAPPER_PRIVATE_T *private;
   MMAL_WRAPPER_T *wrapper;
   int64_t start_time;
   unsigned int i, extra_size;

   FUNC0("wrapper %p, name %s", ctx, name);

   /* Sanity checking */
   if (!ctx || !name)
      return MMAL_EINVAL;

   start_time = FUNC10();

   status = FUNC1(name, &component);
   if (status != MMAL_SUCCESS)
      return status;

   extra_size = (component->input_num * sizeof(MMAL_POOL_T*)) + (component->output_num * (sizeof(MMAL_POOL_T*) + sizeof(MMAL_QUEUE_T*)));
   private = FUNC8(1, sizeof(*private) + extra_size, "mmal wrapper");
   if (!private)
   {
      FUNC2(component);
      return MMAL_ENOMEM;
   }

   if (FUNC11(&private->sema, "mmal wrapper", 0) != VCOS_SUCCESS)
   {
      FUNC2(component);
      FUNC9(private);
      return MMAL_ENOMEM;
   }

   wrapper = &private->wrapper;
   wrapper->component = component;
   wrapper->control = component->control;
   wrapper->input_num = component->input_num;
   wrapper->input = component->input;
   wrapper->output_num = component->output_num;
   wrapper->output = component->output;
   wrapper->input_pool = (MMAL_POOL_T **)&private[1];
   wrapper->output_pool = (MMAL_POOL_T **)&wrapper->input_pool[component->input_num];
   wrapper->output_queue = (MMAL_QUEUE_T **)&wrapper->output_pool[component->output_num];

   /* Create our pools and queues */
   for (i = 0; i < wrapper->input_num; i++)
   {
      wrapper->input_pool[i] = FUNC5(wrapper->input[i], 0, 0);
      if (!wrapper->input_pool[i])
         goto error;
      FUNC3(wrapper->input_pool[i], mmal_wrapper_bh_release_cb, (void *)wrapper);

      wrapper->input[i]->userdata = (void *)wrapper;
   }
   for (i = 0; i < wrapper->output_num; i++)
   {
      wrapper->output_pool[i] = FUNC5(wrapper->output[i], 0, 0);
      wrapper->output_queue[i] = FUNC6();
      if (!wrapper->output_pool[i] || !wrapper->output_queue[i])
         goto error;
      FUNC3(wrapper->output_pool[i], mmal_wrapper_bh_release_cb, (void *)wrapper);

      wrapper->output[i]->userdata = (void *)wrapper;
   }

   /* Setup control port */
   wrapper->control->userdata = (void *)wrapper;
   status = FUNC4(wrapper->control, mmal_wrapper_control_cb);
   if (status != MMAL_SUCCESS)
      goto error;

   wrapper->time_setup = FUNC10() - start_time;
   *ctx = wrapper;
   return MMAL_SUCCESS;

 error:
   FUNC7(wrapper);
   return status == MMAL_SUCCESS ? MMAL_ENOMEM : status;
}