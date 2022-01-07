
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int fp; } ;
struct TYPE_5__ {int fp; } ;
struct TYPE_7__ {int type; TYPE_2__ memory; TYPE_1__ file; } ;
typedef TYPE_3__ intfstream_internal_t ;
typedef int int64_t ;





 int filestream_write (int ,void const*,int ) ;
 int memstream_write (int ,void const*,int ) ;

int64_t intfstream_write(intfstream_internal_t *intf,
      const void *s, uint64_t len)
{
   if (!intf)
      return 0;

   switch (intf->type)
   {
      case 129:
         return filestream_write(intf->file.fp, s, len);
      case 128:
         return memstream_write(intf->memory.fp, s, len);
      case 130:
         return -1;
   }

   return 0;
}
