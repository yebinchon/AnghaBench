
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uint; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ MMAL_DBG_ENTRY_T ;






 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static void on_bulk_ack(MMAL_DBG_ENTRY_T *entry,
                        char *buf,
                        size_t buflen)
{
   switch (entry->u.uint)
   {
   case 131: snprintf(buf,buflen,"vchiq bulk rx abort"); break;
   case 129: snprintf(buf,buflen,"vchiq bulk tx abort"); break;
   case 128: snprintf(buf,buflen,"vchiq bulk tx done"); break;
   case 130: snprintf(buf,buflen,"vchiq bulk rx done"); break;
   default: snprintf(buf,buflen,"vchiq unknown reason %d", entry->u.uint); break;
   }
}
