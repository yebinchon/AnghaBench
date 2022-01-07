
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulg ;
typedef int uch ;
typedef int png_structp ;
typedef int png_infop ;
struct TYPE_3__ {int * info_ptr; int * png_ptr; int jmpbuf; } ;
typedef TYPE_1__ mainprog_info ;


 int png_destroy_read_struct (int *,int *,int *) ;
 int png_process_data (int ,int ,int *,int ) ;
 scalar_t__ setjmp (int ) ;

int readpng2_decode_data(mainprog_info *mainprog_ptr, uch *rawbuf, ulg length)
{
    png_structp png_ptr = (png_structp)mainprog_ptr->png_ptr;
    png_infop info_ptr = (png_infop)mainprog_ptr->info_ptr;





    if (setjmp(mainprog_ptr->jmpbuf)) {
        png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
        mainprog_ptr->png_ptr = ((void*)0);
        mainprog_ptr->info_ptr = ((void*)0);
        return 2;
    }




    png_process_data(png_ptr, info_ptr, rawbuf, length);

    return 0;
}
