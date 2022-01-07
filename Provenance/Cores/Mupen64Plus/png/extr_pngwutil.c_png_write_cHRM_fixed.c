
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bluey; int bluex; int greeny; int greenx; int redy; int redx; int whitey; int whitex; } ;
typedef TYPE_1__ png_xy ;
typedef int png_structrp ;
typedef int png_byte ;


 int png_cHRM ;
 int png_debug (int,char*) ;
 int png_save_int_32 (int *,int ) ;
 int png_write_complete_chunk (int ,int ,int *,int) ;

void
png_write_cHRM_fixed(png_structrp png_ptr, const png_xy *xy)
{
   png_byte buf[32];

   png_debug(1, "in png_write_cHRM");


   png_save_int_32(buf, xy->whitex);
   png_save_int_32(buf + 4, xy->whitey);

   png_save_int_32(buf + 8, xy->redx);
   png_save_int_32(buf + 12, xy->redy);

   png_save_int_32(buf + 16, xy->greenx);
   png_save_int_32(buf + 20, xy->greeny);

   png_save_int_32(buf + 24, xy->bluex);
   png_save_int_32(buf + 28, xy->bluey);

   png_write_complete_chunk(png_ptr, png_cHRM, buf, 32);
}
