
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* png_structrp ;
struct TYPE_4__ {int * msg; } ;
struct TYPE_5__ {TYPE_1__ zstream; } ;


 void* PNGZ_MSG_CAST (char*) ;
void
png_zstream_error(png_structrp png_ptr, int ret)
{




   if (png_ptr->zstream.msg == ((void*)0)) switch (ret)
   {
      default:
      case 131:
         png_ptr->zstream.msg = PNGZ_MSG_CAST("unexpected zlib return code");
         break;

      case 130:

         png_ptr->zstream.msg = PNGZ_MSG_CAST("unexpected end of LZ stream");
         break;

      case 132:



         png_ptr->zstream.msg = PNGZ_MSG_CAST("missing LZ dictionary");
         break;

      case 134:

         png_ptr->zstream.msg = PNGZ_MSG_CAST("zlib IO error");
         break;

      case 129:

         png_ptr->zstream.msg = PNGZ_MSG_CAST("bad parameters to zlib");
         break;

      case 135:
         png_ptr->zstream.msg = PNGZ_MSG_CAST("damaged LZ stream");
         break;

      case 133:
         png_ptr->zstream.msg = PNGZ_MSG_CAST("insufficient memory");
         break;

      case 136:



         png_ptr->zstream.msg = PNGZ_MSG_CAST("truncated");
         break;

      case 128:
         png_ptr->zstream.msg = PNGZ_MSG_CAST("unsupported zlib version");
         break;

      case 137:





         png_ptr->zstream.msg = PNGZ_MSG_CAST("unexpected zlib return");
         break;
   }
}
