
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {scalar_t__ size; int data; int * data_const; } ;
typedef TYPE_2__ retro_ctx_serialize_info_t ;
struct TYPE_10__ {size_t run_ptr; int quirks; scalar_t__ state_size; TYPE_1__* buffer; } ;
typedef TYPE_3__ netplay_t ;
struct TYPE_8__ {int state; } ;


 scalar_t__ NETPLAY_QUIRK_INITIALIZATION ;
 int core_serialize (TYPE_2__*) ;
 int netplay_init_serialization (TYPE_3__*) ;
 int netplay_init_socket_buffers (TYPE_3__*) ;

bool netplay_try_init_serialization(netplay_t *netplay)
{
   retro_ctx_serialize_info_t serial_info;

   if (netplay->state_size)
      return 1;

   if (!netplay_init_serialization(netplay))
      return 0;


   serial_info.data_const = ((void*)0);
   serial_info.data = netplay->buffer[netplay->run_ptr].state;
   serial_info.size = netplay->state_size;

   if (!core_serialize(&serial_info))
      return 0;


   netplay->quirks &= ~((uint64_t) NETPLAY_QUIRK_INITIALIZATION);

   return netplay_init_socket_buffers(netplay);
}
