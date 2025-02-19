
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct MMAL_COMPONENT_MODULE_T {int dummy; } ;
struct TYPE_19__ {int lock; } ;
struct TYPE_18__ {int refcount; int event_pool; struct MMAL_COMPONENT_MODULE_T* module; int priority; } ;
struct TYPE_17__ {char* name; unsigned int port_num; unsigned int input_num; unsigned int output_num; unsigned int clock_num; TYPE_1__** port; TYPE_1__** clock; TYPE_1__** output; TYPE_1__** input; TYPE_1__* control; scalar_t__ id; TYPE_3__* priv; } ;
struct TYPE_16__ {int buffer_size_min; scalar_t__ buffer_num_min; unsigned int index_all; unsigned int index; scalar_t__ buffer_size; scalar_t__ buffer_num; int type; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_EVENT_FORMAT_CHANGED_T ;
typedef int MMAL_ES_SPECIFIC_FORMAT_T ;
typedef int MMAL_ES_FORMAT_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;
typedef TYPE_3__ MMAL_COMPONENT_PRIVATE_T ;
typedef TYPE_4__ MMAL_COMPONENT_CORE_PRIVATE_T ;


 int LOG_ERROR (char*,...) ;
 int LOG_INFO (char*,char const*,scalar_t__,TYPE_2__*) ;
 scalar_t__ MMAL_CONTROL_PORT_BUFFERS_MIN ;
 int MMAL_EINVAL ;
 int MMAL_ENOMEM ;
 int MMAL_ENOSYS ;
 int MMAL_PORT_TYPE_CLOCK ;
 int MMAL_PORT_TYPE_CONTROL ;
 int MMAL_PORT_TYPE_INPUT ;
 int MMAL_PORT_TYPE_OUTPUT ;
 int MMAL_SUCCESS ;
 scalar_t__ VCOS_SUCCESS ;
 int VCOS_THREAD_PRI_NORMAL ;
 int memcpy (char*,char const*,unsigned int) ;
 int mmal_component_destroy_internal (TYPE_2__*) ;
 int mmal_component_init_control_port (TYPE_1__*) ;
 int mmal_component_supplier_create (char const*,TYPE_2__*) ;
 int mmal_core_init () ;
 int mmal_core_instance_count ;
 int mmal_core_lock ;
 int mmal_pool_create (scalar_t__,int) ;
 TYPE_1__* mmal_port_alloc (TYPE_2__*,int ,int ) ;
 int strlen (char const*) ;
 TYPE_2__* vcos_calloc (int,unsigned int,char*) ;
 int vcos_free (TYPE_2__*) ;
 TYPE_1__** vcos_malloc (int,char*) ;
 scalar_t__ vcos_mutex_create (int *,char*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static MMAL_STATUS_T mmal_component_create_core(const char *name,
   MMAL_STATUS_T (*constructor)(const char *name, MMAL_COMPONENT_T *),
   struct MMAL_COMPONENT_MODULE_T *constructor_private,
   MMAL_COMPONENT_T **component)
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private;
   MMAL_STATUS_T status = MMAL_ENOMEM;
   unsigned int size = sizeof(MMAL_COMPONENT_T) + sizeof(MMAL_COMPONENT_CORE_PRIVATE_T);
   unsigned int i, name_length = strlen(name) + 1;
   unsigned int port_index;
   char *component_name;

   if(!component)
      return MMAL_EINVAL;

   mmal_core_init();

   *component = vcos_calloc(1, size + name_length, "mmal component");
   if(!*component)
      return MMAL_ENOMEM;

   private = (MMAL_COMPONENT_CORE_PRIVATE_T *)&(*component)[1];
   (*component)->priv = (MMAL_COMPONENT_PRIVATE_T *)private;
   (*component)->name = component_name= (char *)&((MMAL_COMPONENT_CORE_PRIVATE_T *)(*component)->priv)[1];
   memcpy(component_name, name, name_length);

   (*component)->priv->refcount = 1;
   (*component)->priv->priority = VCOS_THREAD_PRI_NORMAL;

   if(vcos_mutex_create(&private->lock, "mmal component lock") != VCOS_SUCCESS)
   {
      vcos_free(*component);
      return MMAL_ENOMEM;
   }

   vcos_mutex_lock(&mmal_core_lock);
   (*component)->id=mmal_core_instance_count++;
   vcos_mutex_unlock(&mmal_core_lock);


   (*component)->control = mmal_port_alloc(*component, MMAL_PORT_TYPE_CONTROL, 0);
   if(!(*component)->control)
      goto error;
   mmal_component_init_control_port((*component)->control);


   (*component)->priv->module = constructor_private;
   if (!constructor)
      constructor = mmal_component_supplier_create;
   status = constructor(name, *component);
   if (status != MMAL_SUCCESS)
   {
      if (status == MMAL_ENOSYS)
         LOG_ERROR("could not find component '%s'", name);
      else
         LOG_ERROR("could not create component '%s' (%i)", name, status);
      goto error;
   }


   if ((*component)->control->buffer_size_min <
       sizeof(MMAL_ES_FORMAT_T) + sizeof(MMAL_ES_SPECIFIC_FORMAT_T) + sizeof(MMAL_EVENT_FORMAT_CHANGED_T))
      (*component)->control->buffer_size_min = sizeof(MMAL_ES_FORMAT_T) +
         sizeof(MMAL_ES_SPECIFIC_FORMAT_T) + sizeof(MMAL_EVENT_FORMAT_CHANGED_T);

   if ((*component)->control->buffer_num_min < MMAL_CONTROL_PORT_BUFFERS_MIN)
      (*component)->control->buffer_num_min = MMAL_CONTROL_PORT_BUFFERS_MIN;


   (*component)->priv->event_pool = mmal_pool_create((*component)->control->buffer_num_min,
         (*component)->control->buffer_size_min);
   if (!(*component)->priv->event_pool)
   {
      status = MMAL_ENOMEM;
      LOG_ERROR("could not create event pool (%d, %d)", (*component)->control->buffer_num_min,
            (*component)->control->buffer_size_min);
      goto error;
   }


   (*component)->port_num = (*component)->input_num + (*component)->output_num + (*component)->clock_num + 1;
   (*component)->port = vcos_malloc((*component)->port_num * sizeof(MMAL_PORT_T *), "mmal ports");
   if (!(*component)->port)
   {
      status = MMAL_ENOMEM;
      LOG_ERROR("could not create list of ports");
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

   LOG_INFO("created '%s' %d %p", name, (*component)->id, *component);


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
   mmal_component_destroy_internal(*component);
   *component = 0;
   return status;
}
