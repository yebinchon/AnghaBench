
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {TYPE_2__* priv; scalar_t__ index; scalar_t__ type; TYPE_1__* component; } ;
struct TYPE_11__ {int (* pf_payload_free ) (TYPE_3__*,int *) ;int pf_payload_alloc; } ;
struct TYPE_10__ {int name; } ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef int MEM_HANDLE_T ;


 int LOCK_PORT (TYPE_3__*) ;
 int LOG_TRACE (char*,int ,int,int,TYPE_3__*,int *) ;
 int UNLOCK_PORT (TYPE_3__*) ;
 int mem_release (int ) ;
 int mmal_port_release (TYPE_3__*) ;
 int stub1 (TYPE_3__*,int *) ;
 int vcos_free (int *) ;

void mmal_port_payload_free(MMAL_PORT_T *port, uint8_t *payload)
{
   if (!port || !port->priv)
      return;

   LOG_TRACE("%s(%i:%i) port %p, payload %p", port->component->name,
             (int)port->type, (int)port->index, port, payload);

   if (!port->priv->pf_payload_alloc)
   {




      vcos_free(payload);

      mmal_port_release(port);
      return;
   }

   LOCK_PORT(port);
   port->priv->pf_payload_free(port, payload);
   UNLOCK_PORT(port);
   mmal_port_release(port);
}
