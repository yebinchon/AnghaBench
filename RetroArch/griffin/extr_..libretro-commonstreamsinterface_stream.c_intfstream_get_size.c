
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int fp; } ;
struct TYPE_8__ {int size; } ;
struct TYPE_9__ {TYPE_2__ buf; } ;
struct TYPE_7__ {int fp; } ;
struct TYPE_11__ {int type; TYPE_4__ chd; TYPE_3__ memory; TYPE_1__ file; } ;
typedef TYPE_5__ intfstream_internal_t ;
typedef int int64_t ;





 int chdstream_get_size (int ) ;
 int filestream_get_size (int ) ;

int64_t intfstream_get_size(intfstream_internal_t *intf)
{
   if (!intf)
      return 0;

   switch (intf->type)
   {
      case 129:
         return filestream_get_size(intf->file.fp);
      case 128:
         return intf->memory.buf.size;
      case 130:



        break;

   }

   return 0;
}
