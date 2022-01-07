
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t png_uint_32 ;
typedef int png_structp ;
typedef int png_bytep ;
struct TYPE_3__ {int pass; int (* mainprog_display_row ) (size_t) ;int * row_pointers; } ;
typedef TYPE_1__ mainprog_info ;


 TYPE_1__* png_get_progressive_ptr (int ) ;
 int png_progressive_combine_row (int ,int ,int ) ;
 int stub1 (size_t) ;

__attribute__((used)) static void readpng2_row_callback(png_structp png_ptr, png_bytep new_row,
                                  png_uint_32 row_num, int pass)
{
    mainprog_info *mainprog_ptr;





    if (!new_row)
        return;





    mainprog_ptr = png_get_progressive_ptr(png_ptr);




    mainprog_ptr->pass = pass;






    png_progressive_combine_row(png_ptr, mainprog_ptr->row_pointers[row_num],
      new_row);





    (*mainprog_ptr->mainprog_display_row)(row_num);




    return;
}
