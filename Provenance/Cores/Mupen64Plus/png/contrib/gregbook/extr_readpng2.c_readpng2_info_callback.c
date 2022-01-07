
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* ulg ;
typedef void* uch ;
typedef scalar_t__ png_uint_32 ;
typedef int png_structp ;
typedef int png_infop ;
typedef int png_fixed_point ;
typedef TYPE_1__* png_color_16p ;
struct TYPE_6__ {int bg_red; int bg_green; int bg_blue; int display_exponent; int rowbytes; int (* mainprog_init ) () ;int channels; int passes; scalar_t__ need_bgcolor; void* height; void* width; } ;
typedef TYPE_2__ mainprog_info ;
struct TYPE_5__ {int red; int green; int blue; int gray; } ;


 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_GRAY_ALPHA ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_INFO_tRNS ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int png_get_IHDR (int ,int ,scalar_t__*,scalar_t__*,int*,int*,int *,int *,int *) ;
 scalar_t__ png_get_bKGD (int ,int ,TYPE_1__**) ;
 int png_get_channels (int ,int ) ;
 scalar_t__ png_get_gAMA (int ,int ,int*) ;
 scalar_t__ png_get_gAMA_fixed (int ,int ,int*) ;
 TYPE_2__* png_get_progressive_ptr (int ) ;
 scalar_t__ png_get_rowbytes (int ,int ) ;
 scalar_t__ png_get_valid (int ,int ,int ) ;
 int png_read_update_info (int ,int ) ;
 int png_set_expand (int ) ;
 int png_set_gamma (int ,int,double) ;
 int png_set_gamma_fixed (int ,int,int) ;
 int png_set_gray_to_rgb (int ) ;
 int png_set_interlace_handling (int ) ;
 int png_set_scale_16 (int ) ;
 int png_set_strip_16 (int ) ;
 int stderr ;
 int stub1 () ;

__attribute__((used)) static void readpng2_info_callback(png_structp png_ptr, png_infop info_ptr)
{
    mainprog_info *mainprog_ptr;
    int color_type, bit_depth;
    png_uint_32 width, height;



    png_fixed_point gamma;
    mainprog_ptr = png_get_progressive_ptr(png_ptr);

    if (mainprog_ptr == ((void*)0)) {
        fprintf(stderr,
          "readpng2 error:  main struct not recoverable in info_callback.\n");
        fflush(stderr);
        return;







    }




    png_get_IHDR(png_ptr, info_ptr, &width, &height, &bit_depth, &color_type,
       ((void*)0), ((void*)0), ((void*)0));
    mainprog_ptr->width = (ulg)width;
    mainprog_ptr->height = (ulg)height;





    if (mainprog_ptr->need_bgcolor)
    {
        png_color_16p pBackground;




        if (png_get_bKGD(png_ptr, info_ptr, &pBackground))
        {




           if (bit_depth == 16) {
               mainprog_ptr->bg_red = pBackground->red >> 8;
               mainprog_ptr->bg_green = pBackground->green >> 8;
               mainprog_ptr->bg_blue = pBackground->blue >> 8;
           } else if (color_type == PNG_COLOR_TYPE_GRAY && bit_depth < 8) {
               if (bit_depth == 1)
                   mainprog_ptr->bg_red = mainprog_ptr->bg_green =
                     mainprog_ptr->bg_blue = pBackground->gray? 255 : 0;
               else if (bit_depth == 2)
                   mainprog_ptr->bg_red = mainprog_ptr->bg_green =
                     mainprog_ptr->bg_blue = (255/3) * pBackground->gray;
               else
                   mainprog_ptr->bg_red = mainprog_ptr->bg_green =
                     mainprog_ptr->bg_blue = (255/15) * pBackground->gray;
           } else {
               mainprog_ptr->bg_red = (uch)pBackground->red;
               mainprog_ptr->bg_green = (uch)pBackground->green;
               mainprog_ptr->bg_blue = (uch)pBackground->blue;
           }
        }
    }







    if (color_type == PNG_COLOR_TYPE_PALETTE)
        png_set_expand(png_ptr);
    if (color_type == PNG_COLOR_TYPE_GRAY && bit_depth < 8)
        png_set_expand(png_ptr);
    if (png_get_valid(png_ptr, info_ptr, PNG_INFO_tRNS))
        png_set_expand(png_ptr);
    if (color_type == PNG_COLOR_TYPE_GRAY ||
        color_type == PNG_COLOR_TYPE_GRAY_ALPHA)
        png_set_gray_to_rgb(png_ptr);
    if (png_get_gAMA_fixed(png_ptr, info_ptr, &gamma))
        png_set_gamma_fixed(png_ptr,
            (png_fixed_point)(100000*mainprog_ptr->display_exponent+.5), gamma);
    else
        png_set_gamma_fixed(png_ptr,
            (png_fixed_point)(100000*mainprog_ptr->display_exponent+.5), 45455);




    mainprog_ptr->passes = png_set_interlace_handling(png_ptr);





    png_read_update_info(png_ptr, info_ptr);

    mainprog_ptr->rowbytes = (int)png_get_rowbytes(png_ptr, info_ptr);
    mainprog_ptr->channels = png_get_channels(png_ptr, info_ptr);







    (*mainprog_ptr->mainprog_init)();




    return;
}
