
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uch ;
typedef TYPE_1__* png_color_16p ;
struct TYPE_3__ {int red; int green; int blue; int gray; } ;


 scalar_t__ PNG_COLOR_TYPE_GRAY ;
 int PNG_INFO_bKGD ;
 int bit_depth ;
 scalar_t__ color_type ;
 int info_ptr ;
 int png_destroy_read_struct (int *,int *,int *) ;
 int png_get_bKGD (int ,int ,TYPE_1__**) ;
 int png_get_valid (int ,int ,int ) ;
 int png_jmpbuf (int ) ;
 int png_ptr ;
 scalar_t__ setjmp (int ) ;

int readpng_get_bgcolor(uch *red, uch *green, uch *blue)
{
    png_color_16p pBackground;





    if (setjmp(png_jmpbuf(png_ptr))) {
        png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
        return 2;
    }


    if (!png_get_valid(png_ptr, info_ptr, PNG_INFO_bKGD))
        return 1;





    png_get_bKGD(png_ptr, info_ptr, &pBackground);





    if (bit_depth == 16) {
        *red = pBackground->red >> 8;
        *green = pBackground->green >> 8;
        *blue = pBackground->blue >> 8;
    } else if (color_type == PNG_COLOR_TYPE_GRAY && bit_depth < 8) {
        if (bit_depth == 1)
            *red = *green = *blue = pBackground->gray? 255 : 0;
        else if (bit_depth == 2)
            *red = *green = *blue = (255/3) * pBackground->gray;
        else
            *red = *green = *blue = (255/15) * pBackground->gray;
    } else {
        *red = (uch)pBackground->red;
        *green = (uch)pBackground->green;
        *blue = (uch)pBackground->blue;
    }

    return 0;
}
