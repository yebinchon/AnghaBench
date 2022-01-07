
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fp; } ;
struct TYPE_5__ {int fp; } ;
struct TYPE_7__ {int type; TYPE_2__ memory; TYPE_1__ file; } ;
typedef TYPE_3__ intfstream_internal_t ;





 int filestream_putc (int ,int) ;
 int memstream_putc (int ,int) ;

void intfstream_putc(intfstream_internal_t *intf, int c)
{
   if (!intf)
      return;

   switch (intf->type)
   {
      case 129:
         filestream_putc(intf->file.fp, c);
         break;
      case 128:
         memstream_putc(intf->memory.fp, c);
         break;
      case 130:
         break;
   }
}
