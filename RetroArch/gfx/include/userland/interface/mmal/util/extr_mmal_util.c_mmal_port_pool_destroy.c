
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int is_enabled; scalar_t__ index; scalar_t__ type; TYPE_1__* component; int priv; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef int MMAL_POOL_T ;


 int LOG_ERROR (char*,TYPE_2__*,int *) ;
 int LOG_TRACE (char*,int ,int,int,TYPE_2__*,int *) ;
 int mmal_pool_destroy (int *) ;
 int mmal_port_disable (TYPE_2__*) ;
 int vcos_verify (int) ;

void mmal_port_pool_destroy(MMAL_PORT_T *port, MMAL_POOL_T *pool)
{
   if (!port || !port->priv || !pool)
      return;

   LOG_TRACE("%s(%i:%i) port %p, pool %p", port->component->name,
             (int)port->type, (int)port->index, port, pool);

   if (!vcos_verify(!port->is_enabled))
   {
      LOG_ERROR("port %p, pool %p destroyed while port enabled", port, pool);
      mmal_port_disable(port);
   }

   mmal_pool_destroy(pool);
}
