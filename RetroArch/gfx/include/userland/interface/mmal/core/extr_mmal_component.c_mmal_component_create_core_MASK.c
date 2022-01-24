#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct MMAL_COMPONENT_MODULE_T {int dummy; } ;
struct TYPE_19__ {int /*<<< orphan*/  lock; } ;
struct TYPE_18__ {int refcount; int /*<<< orphan*/  event_pool; struct MMAL_COMPONENT_MODULE_T* module; int /*<<< orphan*/  priority; } ;
struct TYPE_17__ {char* name; unsigned int port_num; unsigned int input_num; unsigned int output_num; unsigned int clock_num; TYPE_1__** port; TYPE_1__** clock; TYPE_1__** output; TYPE_1__** input; TYPE_1__* control; scalar_t__ id; TYPE_3__* priv; } ;
struct TYPE_16__ {int buffer_size_min; scalar_t__ buffer_num_min; unsigned int index_all; unsigned int index; scalar_t__ buffer_size; scalar_t__ buffer_num; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_EVENT_FORMAT_CHANGED_T ;
typedef  int /*<<< orphan*/  MMAL_ES_SPECIFIC_FORMAT_T ;
typedef  int /*<<< orphan*/  MMAL_ES_FORMAT_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;
typedef  TYPE_3__ MMAL_COMPONENT_PRIVATE_T ;
typedef  TYPE_4__ MMAL_COMPONENT_CORE_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,scalar_t__,TYPE_2__*) ; 
 scalar_t__ MMAL_CONTROL_PORT_BUFFERS_MIN ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_ENOMEM ; 
 int /*<<< orphan*/  MMAL_ENOSYS ; 
 int /*<<< orphan*/  MMAL_PORT_TYPE_CLOCK ; 
 int /*<<< orphan*/  MMAL_PORT_TYPE_CONTROL ; 
 int /*<<< orphan*/  MMAL_PORT_TYPE_INPUT ; 
 int /*<<< orphan*/  MMAL_PORT_TYPE_OUTPUT ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  VCOS_THREAD_PRI_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  mmal_core_instance_count ; 
 int /*<<< orphan*/  mmal_core_lock ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*) ; 
 TYPE_2__* FUNC10 (int,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 TYPE_1__** FUNC12 (int,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC16(const char *name,
   MMAL_STATUS_T (*constructor)(const char *name, MMAL_COMPONENT_T *),
   struct MMAL_COMPONENT_MODULE_T *constructor_private,
   MMAL_COMPONENT_T **component)
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private;
   MMAL_STATUS_T status = MMAL_ENOMEM;
   unsigned int size = sizeof(MMAL_COMPONENT_T) + sizeof(MMAL_COMPONENT_CORE_PRIVATE_T);
   unsigned int i, name_length = FUNC9(name) + 1;
   unsigned int port_index;
   char *component_name;

   if(!component)
      return MMAL_EINVAL;

   FUNC6();

   *component = FUNC10(1, size + name_length, "mmal component");
   if(!*component)
      return MMAL_ENOMEM;

   private = (MMAL_COMPONENT_CORE_PRIVATE_T *)&(*component)[1];
   (*component)->priv = (MMAL_COMPONENT_PRIVATE_T *)private;
   (*component)->name = component_name= (char *)&((MMAL_COMPONENT_CORE_PRIVATE_T *)(*component)->priv)[1];
   FUNC2(component_name, name, name_length);
   /* coverity[missing_lock] Component and mutex have just been created. No need to lock yet */
   (*component)->priv->refcount = 1;
   (*component)->priv->priority = VCOS_THREAD_PRI_NORMAL;

   if(FUNC13(&private->lock, "mmal component lock") != VCOS_SUCCESS)
   {
      FUNC11(*component);
      return MMAL_ENOMEM;
   }

   FUNC14(&mmal_core_lock);
   (*component)->id=mmal_core_instance_count++;
   FUNC15(&mmal_core_lock);

   /* Create the control port */
   (*component)->control = FUNC8(*component, MMAL_PORT_TYPE_CONTROL, 0);
   if(!(*component)->control)
      goto error;
   FUNC4((*component)->control);

   /* Create the actual component */
   (*component)->priv->module = constructor_private;
   if (!constructor)
      constructor = mmal_component_supplier_create;
   status = constructor(name, *component);
   if (status != MMAL_SUCCESS)
   {
      if (status == MMAL_ENOSYS)
         FUNC0("could not find component '%s'", name);
      else
         FUNC0("could not create component '%s' (%i)", name, status);
      goto error;
   }

   /* Make sure we have enough space for at least a MMAL_EVENT_FORMAT_CHANGED */
   if ((*component)->control->buffer_size_min <
       sizeof(MMAL_ES_FORMAT_T) + sizeof(MMAL_ES_SPECIFIC_FORMAT_T) + sizeof(MMAL_EVENT_FORMAT_CHANGED_T))
      (*component)->control->buffer_size_min = sizeof(MMAL_ES_FORMAT_T) +
         sizeof(MMAL_ES_SPECIFIC_FORMAT_T) + sizeof(MMAL_EVENT_FORMAT_CHANGED_T);
   /* Make sure we have enough events */
   if ((*component)->control->buffer_num_min < MMAL_CONTROL_PORT_BUFFERS_MIN)
      (*component)->control->buffer_num_min = MMAL_CONTROL_PORT_BUFFERS_MIN;

   /* Create the event pool */
   (*component)->priv->event_pool = FUNC7((*component)->control->buffer_num_min,
         (*component)->control->buffer_size_min);
   if (!(*component)->priv->event_pool)
   {
      status = MMAL_ENOMEM;
      FUNC0("could not create event pool (%d, %d)", (*component)->control->buffer_num_min,
            (*component)->control->buffer_size_min);
      goto error;
   }

   /* Build the list of all the ports */
   (*component)->port_num = (*component)->input_num + (*component)->output_num + (*component)->clock_num + 1;
   (*component)->port = FUNC12((*component)->port_num * sizeof(MMAL_PORT_T *), "mmal ports");
   if (!(*component)->port)
   {
      status = MMAL_ENOMEM;
      FUNC0("could not create list of ports");
      goto error;
   }
   port_index = 0;
   (*component)->port[port_index++] = (*component)->control;
   for (i = 0; i < (*component)->input_num; i++)
      (*component)->port[port_index++] = (*component)->input[i];
   for (i = 0; i < (*component)->output_num; i++)
      (*component)->port[port_index++] = (*component)->output[i];
   for (i = 0; i < (*component)->clock_num; i++)
      (*component)->port[port_index++] = (*component)->clock[i];
   for (i = 0; i < (*component)->port_num; i++)
      (*component)->port[i]->index_all = i;

   FUNC1("created '%s' %d %p", name, (*component)->id, *component);

   /* Make sure the port types, indexes and buffer sizes are set correctly */
   (*component)->control->type = MMAL_PORT_TYPE_CONTROL;
   (*component)->control->index = 0;
   for (i = 0; i < (*component)->input_num; i++)
   {
      MMAL_PORT_T *port = (*component)->input[i];
      port->type = MMAL_PORT_TYPE_INPUT;
      port->index = i;
   }
   for (i = 0; i < (*component)->output_num; i++)
   {
      MMAL_PORT_T *port = (*component)->output[i];
      port->type = MMAL_PORT_TYPE_OUTPUT;
      port->index = i;
   }
   for (i = 0; i < (*component)->clock_num; i++)
   {
      MMAL_PORT_T *port = (*component)->clock[i];
      port->type = MMAL_PORT_TYPE_CLOCK;
      port->index = i;
   }
   for (i = 0; i < (*component)->port_num; i++)
   {
      MMAL_PORT_T *port = (*component)->port[i];
      if (port->buffer_size < port->buffer_size_min)
         port->buffer_size = port->buffer_size_min;
      if (port->buffer_num < port->buffer_num_min)
         port->buffer_num = port->buffer_num_min;
   }

   return MMAL_SUCCESS;

 error:
   FUNC3(*component);
   *component = 0;
   return status;
}