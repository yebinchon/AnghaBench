
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct netplay_connection {scalar_t__ mode; scalar_t__ active; } ;
struct delta_frame {int* have_real; TYPE_2__** real_input; } ;
struct TYPE_8__ {size_t self_ptr; size_t connections_size; scalar_t__* read_frame_count; scalar_t__ self_frame_count; size_t* client_devices; int * read_ptr; struct delta_frame* buffer; struct netplay_connection* connections; } ;
typedef TYPE_1__ netplay_t ;
typedef TYPE_2__* netplay_input_state_t ;
struct TYPE_9__ {size_t client_num; int size; int data; struct TYPE_9__* next; } ;


 size_t MAX_INPUT_DEVICES ;
 scalar_t__ NETPLAY_CONNECTION_SLAVE ;
 int NEXT_PTR (size_t) ;
 size_t PREV_PTR (size_t) ;
 int memcpy (int ,int ,int) ;
 int netplay_expected_input_size (TYPE_1__*,int) ;
 TYPE_2__* netplay_input_state_for (TYPE_2__**,size_t,int,int,int) ;
 int send_input_frame (TYPE_1__*,struct delta_frame*,int *,int *,size_t,int) ;

void netplay_handle_slaves(netplay_t *netplay)
{
   struct delta_frame *oframe, *frame = &netplay->buffer[netplay->self_ptr];
   size_t i;
   for (i = 0; i < netplay->connections_size; i++)
   {
      struct netplay_connection *connection = &netplay->connections[i];
      if (connection->active &&
          connection->mode == NETPLAY_CONNECTION_SLAVE)
      {
         uint32_t devices, device;
         uint32_t client_num = (uint32_t)(i + 1);



         if (netplay->read_frame_count[client_num] > netplay->self_frame_count)
            continue;


         if (!frame->have_real[client_num])
         {
            devices = netplay->client_devices[client_num];


            oframe = &netplay->buffer[PREV_PTR(netplay->self_ptr)];
            for (device = 0; device < MAX_INPUT_DEVICES; device++)
            {
               netplay_input_state_t istate_out, istate_in;
               if (!(devices & (1<<device)))
                  continue;
               istate_in = oframe->real_input[device];
               while (istate_in && istate_in->client_num != client_num)
                  istate_in = istate_in->next;
               if (!istate_in)
               {

                  netplay_input_state_for(&frame->real_input[device],
                        client_num,
                        netplay_expected_input_size(netplay, 1 << device), 1,
                        0);

               }
               else
               {

                  istate_out = netplay_input_state_for(&frame->real_input[device],
                        client_num, istate_in->size, 1, 0);
                  memcpy(istate_out->data, istate_in->data,
                        istate_in->size * sizeof(uint32_t));
               }
            }
            frame->have_real[client_num] = 1;
         }


         send_input_frame(netplay, frame, ((void*)0), ((void*)0), client_num, 0);


         netplay->read_ptr[client_num] = NEXT_PTR(netplay->self_ptr);
         netplay->read_frame_count[client_num] = netplay->self_frame_count + 1;
      }
   }
}
