
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_12__ {TYPE_1__* priv; int name; scalar_t__ index; scalar_t__ type; TYPE_2__* component; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_10__ {int * (* pf_payload_alloc ) (TYPE_3__*,scalar_t__) ;} ;
typedef TYPE_3__ MMAL_PORT_T ;


 int LOCK_PORT (TYPE_3__*) ;
 int LOG_TRACE (char*,int ,int,int,TYPE_3__*,int) ;
 int MEM_FLAG_DIRECT ;
 int UNLOCK_PORT (TYPE_3__*) ;
 scalar_t__ mem_alloc (scalar_t__,int,int ,int ) ;
 int mmal_port_acquire (TYPE_3__*) ;
 int * stub1 (TYPE_3__*,scalar_t__) ;
 int * vcos_malloc (scalar_t__,char*) ;

uint8_t *mmal_port_payload_alloc(MMAL_PORT_T *port, uint32_t payload_size)
{
   uint8_t *mem;

   if (!port || !port->priv)
      return ((void*)0);

   LOG_TRACE("%s(%i:%i) port %p, size %i", port->component->name,
             (int)port->type, (int)port->index, port, (int)payload_size);

   if (!payload_size)
      return ((void*)0);



   if (!port->priv->pf_payload_alloc)
   {




      mem = vcos_malloc(payload_size, "mmal payload");

      goto end;
   }

   LOCK_PORT(port);
   mem = port->priv->pf_payload_alloc(port, payload_size);
   UNLOCK_PORT(port);

 end:


   if (mem)
      mmal_port_acquire(port);
   return mem;
}
