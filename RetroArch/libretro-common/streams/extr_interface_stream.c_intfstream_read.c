
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int fp; } ;
struct TYPE_7__ {int fp; } ;
struct TYPE_6__ {int fp; } ;
struct TYPE_9__ {int type; TYPE_3__ chd; TYPE_2__ memory; TYPE_1__ file; } ;
typedef TYPE_4__ intfstream_internal_t ;
typedef int int64_t ;





 int chdstream_read (int ,void*,int ) ;
 int filestream_read (int ,void*,int ) ;
 int memstream_read (int ,void*,int ) ;

int64_t intfstream_read(intfstream_internal_t *intf, void *s, uint64_t len)
{
   if (!intf)
      return 0;

   switch (intf->type)
   {
      case 129:
         return filestream_read(intf->file.fp, s, len);
      case 128:
         return memstream_read(intf->memory.fp, s, len);
      case 130:



         break;

   }

   return -1;
}
