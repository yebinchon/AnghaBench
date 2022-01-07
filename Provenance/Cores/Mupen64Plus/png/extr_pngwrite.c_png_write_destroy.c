
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
struct TYPE_5__ {int flags; int * chunk_list; int * tst_row; int * try_row; int * prev_row; int * row_buf; int zbuffer_list; int zstream; } ;


 int PNG_FLAG_ZSTREAM_INITIALIZED ;
 int deflateEnd (int *) ;
 int png_debug (int,char*) ;
 int png_free (TYPE_1__*,int *) ;
 int png_free_buffer_list (TYPE_1__*,int *) ;

__attribute__((used)) static void
png_write_destroy(png_structrp png_ptr)
{
   png_debug(1, "in png_write_destroy");


   if ((png_ptr->flags & PNG_FLAG_ZSTREAM_INITIALIZED) != 0)
      deflateEnd(&png_ptr->zstream);


   png_free_buffer_list(png_ptr, &png_ptr->zbuffer_list);
   png_free(png_ptr, png_ptr->row_buf);
   png_ptr->row_buf = ((void*)0);
}
