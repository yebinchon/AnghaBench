
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





 char* chdstream_gets (int ,char*,int ) ;
 char* filestream_gets (int ,char*,size_t) ;
 char* memstream_gets (int ,char*,size_t) ;

char *intfstream_gets(intfstream_internal_t *intf,
      char *buffer, uint64_t len)
{
   if (!intf)
      return ((void*)0);

   switch (intf->type)
   {
      case 129:
         return filestream_gets(intf->file.fp,
               buffer, (size_t)len);
      case 128:
         return memstream_gets(intf->memory.fp,
               buffer, (size_t)len);
      case 130:



         break;

   }

   return ((void*)0);
}
