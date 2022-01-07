
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char* name; scalar_t__ format; TYPE_2__* priv; } ;
struct TYPE_8__ {TYPE_1__* core; } ;
struct TYPE_7__ {scalar_t__ format_ptr_copy; int lock; int send_lock; int transit_lock; int transit_sema; int stats_lock; int connection_lock; } ;
typedef TYPE_3__ MMAL_PORT_T ;


 int LOG_TRACE (char*,char*,TYPE_3__*) ;
 int mmal_format_free (scalar_t__) ;
 int vcos_assert (int) ;
 int vcos_free (TYPE_3__*) ;
 int vcos_mutex_delete (int *) ;
 int vcos_semaphore_delete (int *) ;

void mmal_port_free(MMAL_PORT_T *port)
{
   LOG_TRACE("%s at %p", port ? port->name : "<invalid>", port);

   if (!port)
      return;

   vcos_assert(port->format == port->priv->core->format_ptr_copy);
   mmal_format_free(port->priv->core->format_ptr_copy);
   vcos_mutex_delete(&port->priv->core->connection_lock);
   vcos_mutex_delete(&port->priv->core->stats_lock);
   vcos_semaphore_delete(&port->priv->core->transit_sema);
   vcos_mutex_delete(&port->priv->core->transit_lock);
   vcos_mutex_delete(&port->priv->core->send_lock);
   vcos_mutex_delete(&port->priv->core->lock);
   vcos_free(port);
}
