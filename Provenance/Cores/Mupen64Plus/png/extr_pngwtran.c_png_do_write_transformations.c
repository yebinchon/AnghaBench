
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_structrp ;
typedef int png_row_infop ;
struct TYPE_4__ {int transformations; int flags; scalar_t__ row_buf; int shift; scalar_t__ bit_depth; int (* write_user_transform_fn ) (TYPE_1__*,int ,scalar_t__) ;} ;


 int PNG_BGR ;
 int PNG_FILLER ;
 int PNG_FLAG_FILLER_AFTER ;
 int PNG_INVERT_ALPHA ;
 int PNG_INVERT_MONO ;
 int PNG_PACK ;
 int PNG_PACKSWAP ;
 int PNG_SHIFT ;
 int PNG_SWAP_ALPHA ;
 int PNG_SWAP_BYTES ;
 int PNG_USER_TRANSFORM ;
 int png_debug (int,char*) ;
 int png_do_bgr (int ,scalar_t__) ;
 int png_do_invert (int ,scalar_t__) ;
 int png_do_pack (int ,scalar_t__,int ) ;
 int png_do_packswap (int ,scalar_t__) ;
 int png_do_shift (int ,scalar_t__,int *) ;
 int png_do_strip_channel (int ,scalar_t__,int) ;
 int png_do_swap (int ,scalar_t__) ;
 int png_do_write_invert_alpha (int ,scalar_t__) ;
 int png_do_write_swap_alpha (int ,scalar_t__) ;
 int stub1 (TYPE_1__*,int ,scalar_t__) ;

void
png_do_write_transformations(png_structrp png_ptr, png_row_infop row_info)
{
   png_debug(1, "in png_do_write_transformations");

   if (png_ptr == ((void*)0))
      return;
}
