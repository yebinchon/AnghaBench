
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fp; } ;
struct TYPE_5__ {int type; TYPE_1__ memory; } ;
typedef TYPE_2__ intfstream_internal_t ;
typedef int int64_t ;





 int memstream_get_ptr (int ) ;

int64_t intfstream_get_ptr(intfstream_internal_t* intf)
{
   if (!intf)
      return 0;

   switch (intf->type)
   {
      case 129:
         return -1;
      case 128:
         return memstream_get_ptr(intf->memory.fp);
      case 130:
         return -1;
   }

   return 0;
}
