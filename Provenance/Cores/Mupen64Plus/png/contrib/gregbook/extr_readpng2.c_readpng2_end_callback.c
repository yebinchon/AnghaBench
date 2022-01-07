
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_structp ;
typedef int png_infop ;
struct TYPE_3__ {int (* mainprog_finish_display ) () ;} ;
typedef TYPE_1__ mainprog_info ;


 TYPE_1__* png_get_progressive_ptr (int ) ;
 int stub1 () ;

__attribute__((used)) static void readpng2_end_callback(png_structp png_ptr, png_infop info_ptr)
{
    mainprog_info *mainprog_ptr;




    mainprog_ptr = png_get_progressive_ptr(png_ptr);
    (*mainprog_ptr->mainprog_finish_display)();




    (void)info_ptr;

    return;
}
