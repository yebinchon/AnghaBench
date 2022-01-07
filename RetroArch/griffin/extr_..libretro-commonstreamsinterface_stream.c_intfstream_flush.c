
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fp; } ;
struct TYPE_5__ {int type; TYPE_1__ file; } ;
typedef TYPE_2__ intfstream_internal_t ;





 int filestream_flush (int ) ;

int intfstream_flush(intfstream_internal_t *intf)
{
   if (!intf)
      return -1;

   switch (intf->type)
   {
      case 129:
         return filestream_flush(intf->file.fp);
      case 128:
      case 130:

         break;
   }

   return 0;
}
