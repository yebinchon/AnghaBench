
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulg ;
typedef int uch ;
typedef int FILE ;


 int bit_depth ;
 int color_type ;
 int fread (int *,int,int,int *) ;
 int height ;
 int info_ptr ;
 int png_create_info_struct (int ) ;
 int png_create_read_struct (int ,int *,int *,int *) ;
 int png_destroy_read_struct (int *,int *,int *) ;
 int png_get_IHDR (int ,int ,int *,int *,int *,int *,int *,int *,int *) ;
 int png_get_libpng_ver (int *) ;
 int png_init_io (int ,int *) ;
 int png_jmpbuf (int ) ;
 int png_ptr ;
 int png_read_info (int ,int ) ;
 int png_set_sig_bytes (int ,int) ;
 scalar_t__ png_sig_cmp (int *,int ,int) ;
 scalar_t__ setjmp (int ) ;
 int width ;

int readpng_init(FILE *infile, ulg *pWidth, ulg *pHeight)
{
    uch sig[8];





    fread(sig, 1, 8, infile);
    if (png_sig_cmp(sig, 0, 8))
        return 1;




    png_ptr = png_create_read_struct(png_get_libpng_ver(((void*)0)), ((void*)0), ((void*)0),
        ((void*)0));
    if (!png_ptr)
        return 4;

    info_ptr = png_create_info_struct(png_ptr);
    if (!info_ptr) {
        png_destroy_read_struct(&png_ptr, ((void*)0), ((void*)0));
        return 4;
    }
    if (setjmp(png_jmpbuf(png_ptr))) {
        png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
        return 2;
    }


    png_init_io(png_ptr, infile);
    png_set_sig_bytes(png_ptr, 8);

    png_read_info(png_ptr, info_ptr);






    png_get_IHDR(png_ptr, info_ptr, &width, &height, &bit_depth, &color_type,
      ((void*)0), ((void*)0), ((void*)0));
    *pWidth = width;
    *pHeight = height;




    return 0;
}
