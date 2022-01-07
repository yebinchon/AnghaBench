
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





 int chdstream_rewind (int ) ;
 int filestream_rewind (int ) ;
 int memstream_rewind (int ) ;

void intfstream_rewind(intfstream_internal_t *intf)
{
   switch (intf->type)
   {
      case 129:
         filestream_rewind(intf->file.fp);
         break;
      case 128:
         memstream_rewind(intf->memory.fp);
         break;
      case 130:



         break;
   }
}
