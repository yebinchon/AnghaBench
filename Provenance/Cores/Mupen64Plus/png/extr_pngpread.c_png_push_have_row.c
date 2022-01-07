
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef int png_bytep ;
struct TYPE_4__ {scalar_t__ pass; int row_number; int (* row_fn ) (TYPE_1__*,int ,int ,int) ;} ;


 int stub1 (TYPE_1__*,int ,int ,int) ;

void
png_push_have_row(png_structrp png_ptr, png_bytep row)
{
   if (png_ptr->row_fn != ((void*)0))
      (*(png_ptr->row_fn))(png_ptr, row, png_ptr->row_number,
          (int)png_ptr->pass);
}
