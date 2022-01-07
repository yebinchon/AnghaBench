
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {scalar_t__ size; int data_const; int data; } ;
typedef TYPE_1__ retro_ctx_serialize_info_t ;
struct TYPE_15__ {scalar_t__ compression_backend; } ;
struct TYPE_14__ {size_t run_ptr; scalar_t__ state_size; int quirks; TYPE_5__ compress_zlib; TYPE_5__ compress_nil; scalar_t__ desync; TYPE_10__* buffer; int run_frame_count; } ;
typedef TYPE_2__ netplay_t ;
struct TYPE_12__ {int state; } ;


 int NETPLAY_COMPRESSION_ZLIB ;
 int NETPLAY_QUIRK_NO_SAVESTATES ;
 int NETPLAY_QUIRK_NO_TRANSMISSION ;
 int core_serialize (TYPE_1__*) ;
 int memcpy (int ,int ,scalar_t__) ;
 scalar_t__ netplay_delta_frame_ready (TYPE_2__*,TYPE_10__*,int ) ;
 int netplay_force_future (TYPE_2__*) ;
 int netplay_send_savestate (TYPE_2__*,TYPE_1__*,int ,TYPE_5__*) ;

void netplay_load_savestate(netplay_t *netplay,
      retro_ctx_serialize_info_t *serial_info, bool save)
{
   retro_ctx_serialize_info_t tmp_serial_info;

   netplay_force_future(netplay);


   if (save || !serial_info)
   {
      if (netplay_delta_frame_ready(netplay,
               &netplay->buffer[netplay->run_ptr], netplay->run_frame_count))
      {
         if (!serial_info)
         {
            tmp_serial_info.size = netplay->state_size;
            tmp_serial_info.data = netplay->buffer[netplay->run_ptr].state;
            if (!core_serialize(&tmp_serial_info))
               return;
            tmp_serial_info.data_const = tmp_serial_info.data;
            serial_info = &tmp_serial_info;
         }
         else
         {
            if (serial_info->size <= netplay->state_size)
               memcpy(netplay->buffer[netplay->run_ptr].state,
                     serial_info->data_const, serial_info->size);
         }
      }

      else
         return;
   }


   if (netplay->desync)
      return;


   if (netplay->quirks & (
              NETPLAY_QUIRK_NO_SAVESTATES
            | NETPLAY_QUIRK_NO_TRANSMISSION))
      return;


   if (netplay->compress_nil.compression_backend)
      netplay_send_savestate(netplay, serial_info, 0, &netplay->compress_nil);
   if (netplay->compress_zlib.compression_backend)
      netplay_send_savestate(netplay, serial_info, NETPLAY_COMPRESSION_ZLIB,
         &netplay->compress_zlib);
}
