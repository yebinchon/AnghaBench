
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* png_structrp ;
struct TYPE_7__ {int * data; } ;
struct TYPE_8__ {int free_me; int * chunk_list; TYPE_1__ unknown_chunk; int * save_buffer; int zstream; int * trans_alpha; int * palette; int * quantize_index; int * palette_lookup; int * read_buffer; int * big_prev_row; int * big_row_buf; } ;


 int PNG_FREE_PLTE ;
 int PNG_FREE_TRNS ;
 int inflateEnd (int *) ;
 int png_debug (int,char*) ;
 int png_destroy_gamma_table (TYPE_2__*) ;
 int png_free (TYPE_2__*,int *) ;
 int png_zfree (TYPE_2__*,int *) ;

__attribute__((used)) static void
png_read_destroy(png_structrp png_ptr)
{
   png_debug(1, "in png_read_destroy");





   png_free(png_ptr, png_ptr->big_row_buf);
   png_ptr->big_row_buf = ((void*)0);
   png_free(png_ptr, png_ptr->big_prev_row);
   png_ptr->big_prev_row = ((void*)0);
   png_free(png_ptr, png_ptr->read_buffer);
   png_ptr->read_buffer = ((void*)0);
   if ((png_ptr->free_me & PNG_FREE_PLTE) != 0)
   {
      png_zfree(png_ptr, png_ptr->palette);
      png_ptr->palette = ((void*)0);
   }
   png_ptr->free_me &= ~PNG_FREE_PLTE;
   inflateEnd(&png_ptr->zstream);
}
