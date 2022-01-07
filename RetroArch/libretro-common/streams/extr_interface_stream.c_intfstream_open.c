
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fp; int track; } ;
struct TYPE_6__ {int fp; int writable; } ;
struct TYPE_8__ {int fp; } ;
struct TYPE_9__ {int type; TYPE_2__ chd; TYPE_1__ memory; TYPE_3__ file; } ;
typedef TYPE_4__ intfstream_internal_t ;





 int chdstream_open (char const*,int ) ;
 int filestream_open (char const*,unsigned int,unsigned int) ;
 int memstream_open (int ) ;

bool intfstream_open(intfstream_internal_t *intf, const char *path,
      unsigned mode, unsigned hints)
{
   if (!intf)
      return 0;

   switch (intf->type)
   {
      case 129:
         intf->file.fp = filestream_open(path, mode, hints);
         if (!intf->file.fp)
            return 0;
         break;
      case 128:
         intf->memory.fp = memstream_open(intf->memory.writable);
         if (!intf->memory.fp)
            return 0;
         break;
      case 130:






         return 0;

   }

   return 1;
}
