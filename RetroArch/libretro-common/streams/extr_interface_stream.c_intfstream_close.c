
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int fp; } ;
struct TYPE_7__ {int fp; } ;
struct TYPE_6__ {int fp; } ;
struct TYPE_9__ {int type; TYPE_3__ chd; TYPE_2__ memory; TYPE_1__ file; } ;
typedef TYPE_4__ intfstream_internal_t ;





 int chdstream_close (int ) ;
 int filestream_close (int ) ;
 int memstream_close (int ) ;

int intfstream_close(intfstream_internal_t *intf)
{
   if (!intf)
      return -1;

   switch (intf->type)
   {
      case 129:
         if (intf->file.fp)
            return filestream_close(intf->file.fp);
         return 0;
      case 128:
         if (intf->memory.fp)
            memstream_close(intf->memory.fp);
         return 0;
      case 130:




         return 0;
   }

   return -1;
}
