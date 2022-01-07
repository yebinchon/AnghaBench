
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int size; } ;
typedef TYPE_2__ retro_ctx_size_info_t ;
struct TYPE_8__ {int state_size; unsigned int buffer_size; int zbuffer_size; int quirks; int * zbuffer; TYPE_1__* buffer; } ;
typedef TYPE_3__ netplay_t ;
struct TYPE_6__ {scalar_t__ state; } ;


 int NETPLAY_QUIRK_NO_SAVESTATES ;
 int NETPLAY_QUIRK_NO_TRANSMISSION ;
 scalar_t__ calloc (int,int) ;
 int core_serialize_size (TYPE_2__*) ;

bool netplay_init_serialization(netplay_t *netplay)
{
   unsigned i;
   retro_ctx_size_info_t info;

   if (netplay->state_size)
      return 1;

   core_serialize_size(&info);

   if (!info.size)
      return 0;

   netplay->state_size = info.size;

   for (i = 0; i < netplay->buffer_size; i++)
   {
      netplay->buffer[i].state = calloc(netplay->state_size, 1);

      if (!netplay->buffer[i].state)
      {
         netplay->quirks |= NETPLAY_QUIRK_NO_SAVESTATES;
         return 0;
      }
   }

   netplay->zbuffer_size = netplay->state_size * 2;
   netplay->zbuffer = (uint8_t *) calloc(netplay->zbuffer_size, 1);
   if (!netplay->zbuffer)
   {
      netplay->quirks |= NETPLAY_QUIRK_NO_TRANSMISSION;
      netplay->zbuffer_size = 0;
      return 0;
   }

   return 1;
}
