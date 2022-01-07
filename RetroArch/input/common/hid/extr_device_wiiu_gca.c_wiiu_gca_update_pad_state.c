
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int data; TYPE_1__* iface; } ;
typedef TYPE_2__ joypad_connection_t ;
struct TYPE_10__ {unsigned char* device_state; TYPE_2__** pads; int online; } ;
typedef TYPE_3__ hid_wiiu_gca_instance_t ;
struct TYPE_8__ {int (* packet_handler ) (int ,unsigned char*,int) ;} ;


 unsigned char GCA_PORT_POWERED ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,int) ;
 TYPE_2__* hid_pad_register (TYPE_3__*,int *) ;
 int stub1 (int ,unsigned char*,int) ;
 int wiiu_gca_pad_connection ;
 int wiiu_gca_unregister_pad (TYPE_3__*,int) ;

__attribute__((used)) static void wiiu_gca_update_pad_state(hid_wiiu_gca_instance_t *instance)
{
   int i, port;
   unsigned char port_connected;

   if(!instance || !instance->online)
      return;

   joypad_connection_t *pad;


   for (i = 1; i < 37; i += 9)
   {
      port = i / 9;
      pad = instance->pads[port];

      port_connected = instance->device_state[i];

      if(port_connected > GCA_PORT_POWERED)
      {
         if(pad == ((void*)0))
         {
            RARCH_LOG("[gca]: Gamepad at port %d connected.\n", port+1);
            instance->pads[port] = hid_pad_register(instance, &wiiu_gca_pad_connection);
            pad = instance->pads[port];
            if(pad == ((void*)0))
            {
               RARCH_ERR("[gca]: Failed to register pad.\n");
               break;
            }
         }

         pad->iface->packet_handler(pad->data, &instance->device_state[i], 9);
      } else {
         if(pad != ((void*)0)) {
            RARCH_LOG("[gca]: Gamepad at port %d disconnected.\n", port+1);
            wiiu_gca_unregister_pad(instance, port);
         }
      }
   }
}
