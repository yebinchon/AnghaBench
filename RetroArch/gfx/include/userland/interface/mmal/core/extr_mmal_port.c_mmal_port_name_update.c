
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ name_size; int name; } ;
struct TYPE_10__ {TYPE_2__* format; scalar_t__ index; int type; TYPE_1__* component; TYPE_3__* priv; } ;
struct TYPE_9__ {TYPE_5__* core; } ;
struct TYPE_8__ {scalar_t__ encoding; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_4__ MMAL_PORT_T ;
typedef TYPE_5__ MMAL_PORT_PRIVATE_CORE_T ;


 int PORT_NAME_FORMAT ;
 int mmal_port_type_to_string (int ) ;
 int vcos_snprintf (int ,scalar_t__,int ,int ,int ,int,char,char*) ;

__attribute__((used)) static void mmal_port_name_update(MMAL_PORT_T *port)
{
   MMAL_PORT_PRIVATE_CORE_T* core = port->priv->core;

   vcos_snprintf(core->name, core->name_size - 1, PORT_NAME_FORMAT,
            port->component->name, mmal_port_type_to_string(port->type), (int)port->index,
            port->format && port->format->encoding ? '(' : '\0',
            port->format && port->format->encoding ? (char *)&port->format->encoding : "");
}
