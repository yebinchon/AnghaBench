
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fp; } ;
struct TYPE_8__ {int fp; } ;
struct TYPE_7__ {int fp; } ;
struct TYPE_9__ {int type; TYPE_1__ chd; TYPE_3__ memory; TYPE_2__ file; } ;
typedef TYPE_4__ intfstream_internal_t ;
typedef int int64_t ;





 int RETRO_VFS_SEEK_POSITION_CURRENT ;
 int RETRO_VFS_SEEK_POSITION_END ;
 int RETRO_VFS_SEEK_POSITION_START ;



 int chdstream_seek (int ,int,int) ;
 int filestream_seek (int ,int,int) ;
 int memstream_seek (int ,int,int) ;

int64_t intfstream_seek(intfstream_internal_t *intf, int64_t offset, int whence)
{
   if (!intf)
      return -1;

   switch (intf->type)
   {
      case 132:
         {
            int seek_position = 0;
            switch (whence)
            {
               case 128:
                  seek_position = RETRO_VFS_SEEK_POSITION_START;
                  break;
               case 130:
                  seek_position = RETRO_VFS_SEEK_POSITION_CURRENT;
                  break;
               case 129:
                  seek_position = RETRO_VFS_SEEK_POSITION_END;
                  break;
            }
            return (int64_t)filestream_seek(intf->file.fp, (int64_t)offset,
                  seek_position);
         }
      case 131:
         return (int64_t)memstream_seek(intf->memory.fp, offset, whence);
      case 133:



         break;

   }

   return -1;
}
