
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef int png_size_t ;
typedef TYPE_2__* png_inforp ;
typedef int png_byte ;
struct TYPE_8__ {int * signature; } ;
struct TYPE_7__ {int sig_bytes; int buffer_size; int process_mode; } ;


 int PNG_READ_CHUNK_MODE ;
 int png_error (TYPE_1__*,char*) ;
 int png_push_fill_buffer (TYPE_1__*,int *,int) ;
 scalar_t__ png_sig_cmp (int *,int,int) ;

void
png_push_read_sig(png_structrp png_ptr, png_inforp info_ptr)
{
   png_size_t num_checked = png_ptr->sig_bytes,
       num_to_check = 8 - num_checked;

   if (png_ptr->buffer_size < num_to_check)
   {
      num_to_check = png_ptr->buffer_size;
   }

   png_push_fill_buffer(png_ptr, &(info_ptr->signature[num_checked]),
       num_to_check);
   png_ptr->sig_bytes = (png_byte)(png_ptr->sig_bytes + num_to_check);

   if (png_sig_cmp(info_ptr->signature, num_checked, num_to_check))
   {
      if (num_checked < 4 &&
          png_sig_cmp(info_ptr->signature, num_checked, num_to_check - 4))
         png_error(png_ptr, "Not a PNG file");

      else
         png_error(png_ptr, "PNG file corrupted by ASCII conversion");
   }
   else
   {
      if (png_ptr->sig_bytes >= 8)
      {
         png_ptr->process_mode = PNG_READ_CHUNK_MODE;
      }
   }
}
