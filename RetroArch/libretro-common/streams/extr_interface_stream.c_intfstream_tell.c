
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
typedef int int64_t ;





 int chdstream_tell (int ) ;
 int filestream_tell (int ) ;
 int memstream_pos (int ) ;

int64_t intfstream_tell(intfstream_internal_t *intf)
{
   if (!intf)
      return -1;

   switch (intf->type)
   {
      case 129:
         return (int64_t)filestream_tell(intf->file.fp);
      case 128:
         return (int64_t)memstream_pos(intf->memory.fp);
      case 130:



         break;

   }

   return -1;
}
