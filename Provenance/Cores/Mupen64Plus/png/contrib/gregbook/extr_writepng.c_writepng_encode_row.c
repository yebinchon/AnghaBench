
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_structp ;
typedef int png_infop ;
struct TYPE_3__ {int image_data; int * info_ptr; int * png_ptr; int jmpbuf; } ;
typedef TYPE_1__ mainprog_info ;


 int png_destroy_write_struct (int *,int *) ;
 int png_write_row (int ,int ) ;
 scalar_t__ setjmp (int ) ;

int writepng_encode_row(mainprog_info *mainprog_ptr)
{
    png_structp png_ptr = (png_structp)mainprog_ptr->png_ptr;
    png_infop info_ptr = (png_infop)mainprog_ptr->info_ptr;





    if (setjmp(mainprog_ptr->jmpbuf)) {
        png_destroy_write_struct(&png_ptr, &info_ptr);
        mainprog_ptr->png_ptr = ((void*)0);
        mainprog_ptr->info_ptr = ((void*)0);
        return 2;
    }




    png_write_row(png_ptr, mainprog_ptr->image_data);

    return 0;
}
