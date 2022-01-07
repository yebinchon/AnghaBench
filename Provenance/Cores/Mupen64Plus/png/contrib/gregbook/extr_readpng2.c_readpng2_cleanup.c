
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ png_structp ;
typedef scalar_t__ png_infop ;
struct TYPE_3__ {int * info_ptr; int * png_ptr; } ;
typedef TYPE_1__ mainprog_info ;


 int png_destroy_read_struct (scalar_t__*,scalar_t__*,int *) ;

void readpng2_cleanup(mainprog_info *mainprog_ptr)
{
    png_structp png_ptr = (png_structp)mainprog_ptr->png_ptr;
    png_infop info_ptr = (png_infop)mainprog_ptr->info_ptr;

    if (png_ptr && info_ptr)
        png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));

    mainprog_ptr->png_ptr = ((void*)0);
    mainprog_ptr->info_ptr = ((void*)0);
}
