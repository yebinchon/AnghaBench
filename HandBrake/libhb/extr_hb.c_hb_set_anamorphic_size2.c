
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_11__ {int num; int den; } ;
typedef TYPE_3__ hb_rational_t ;
struct TYPE_12__ {int width; int height; TYPE_3__ par; } ;
typedef TYPE_4__ hb_geometry_t ;
struct TYPE_9__ {int num; int den; } ;
struct TYPE_10__ {int width; int height; TYPE_1__ par; } ;
struct TYPE_13__ {int keep; int* crop; scalar_t__ modulus; scalar_t__ maxWidth; scalar_t__ maxHeight; int mode; TYPE_2__ geometry; scalar_t__ itu_par; } ;
typedef TYPE_5__ hb_geometry_settings_t ;


 int EVEN (scalar_t__) ;





 int HB_KEEP_DISPLAY_ASPECT ;
 int HB_KEEP_HEIGHT ;
 int HB_MAX_HEIGHT ;
 int HB_MAX_WIDTH ;
 int HB_MIN_HEIGHT ;
 int HB_MIN_WIDTH ;
 int MAX (int ,int) ;
 int MIN (int ,int) ;
 int MULTIPLE_MOD (int,int) ;
 int MULTIPLE_MOD_DOWN (scalar_t__,int) ;
 int MULTIPLE_MOD_UP (int,int) ;
 int hb_limit_rational64 (int*,int*,int,int,int) ;
 int hb_reduce (int*,int*,int,int) ;

void hb_set_anamorphic_size2(hb_geometry_t *src_geo,
                             hb_geometry_settings_t *geo,
                             hb_geometry_t *result)
{
    hb_rational_t in_par, out_par;
    int keep_display_aspect = !!(geo->keep & HB_KEEP_DISPLAY_ASPECT);
    int keep_height = !!(geo->keep & HB_KEEP_HEIGHT);


    int cropped_width = src_geo->width - geo->crop[2] - geo->crop[3];
    int cropped_height = src_geo->height - geo->crop[0] - geo->crop[1];
    double storage_aspect = (double)cropped_width / cropped_height;
    int mod = (geo->modulus > 0) ? EVEN(geo->modulus) : 2;


    if (geo->geometry.par.num == 0 || geo->geometry.par.den == 0)
    {
        geo->geometry.par.num = geo->geometry.par.den = 1;
    }
    if (src_geo->par.num == 0 || src_geo->par.den == 0)
    {
        src_geo->par.num = src_geo->par.den = 1;
    }


    hb_reduce(&in_par.num, &in_par.den,
              geo->geometry.par.num, geo->geometry.par.den);
    int64_t dst_par_num = in_par.num;
    int64_t dst_par_den = in_par.den;

    hb_rational_t src_par = src_geo->par;



    if (src_geo->width == 720 && geo->itu_par)
    {



        int iaspect = src_geo->width * src_par.num * 9. /
                      (src_geo->height * src_par.den);


        if (src_geo->height == 480)
        {

            if (iaspect == 16)
            {

                dst_par_num = 40;
                dst_par_den = 33;
            }
            else if (iaspect == 12)
            {

                dst_par_num = 10;
                dst_par_den = 11;
            }
        }
        else if (src_geo->height == 576)
        {

            if (iaspect == 16)
            {

                dst_par_num = 16;
                dst_par_den = 11;
            }
            else if (iaspect == 12)
            {

                dst_par_num = 12;
                dst_par_den = 11;
            }
        }
    }







    int width, height;
    int maxWidth, maxHeight;

    if (geo->maxWidth > 0)
    {
        maxWidth = MIN(MAX(MULTIPLE_MOD_DOWN(geo->maxWidth, mod),
                            HB_MIN_WIDTH), HB_MAX_WIDTH);
    }
    else
    {
        maxWidth = HB_MAX_WIDTH;
    }
    if (geo->maxHeight > 0)
    {
        maxHeight = MIN(MAX(MULTIPLE_MOD_DOWN(geo->maxHeight, mod),
                            HB_MIN_HEIGHT), HB_MAX_HEIGHT);
    }
    else
    {
        maxHeight = HB_MAX_HEIGHT;
    }

    switch (geo->mode)
    {
        case 129:
        {


            double par, cropped_sar, dar;
            par = (double)src_geo->par.num / src_geo->par.den;
            cropped_sar = (double)cropped_width / cropped_height;
            dar = par * cropped_sar;





            if (keep_display_aspect)
            {
                if (!keep_height)
                {
                    width = MULTIPLE_MOD_UP(geo->geometry.width, mod);
                    height = MULTIPLE_MOD(width / dar, mod);
                }
                else
                {
                    height = MULTIPLE_MOD_UP(geo->geometry.height, mod);
                    width = MULTIPLE_MOD(height * dar, mod);
                }
            }
            else
            {
                width = MULTIPLE_MOD_UP(geo->geometry.width, mod);
                height = MULTIPLE_MOD_UP(geo->geometry.height, mod);
            }


            if (width < HB_MIN_WIDTH)
            {
                width = HB_MIN_WIDTH;
                if (keep_display_aspect)
                {
                    height = MULTIPLE_MOD(width / dar, mod);
                }
            }
            if (height < HB_MIN_HEIGHT)
            {
                height = HB_MIN_HEIGHT;
                if (keep_display_aspect)
                {
                    width = MULTIPLE_MOD(height * dar, mod);
                }
            }
            if (width > maxWidth)
            {
                width = maxWidth;
                if (keep_display_aspect)
                {
                    height = MULTIPLE_MOD(width / dar, mod);
                }
            }
            if (height > maxHeight)
            {
                height = maxHeight;
                if (keep_display_aspect)
                {
                    width = MULTIPLE_MOD(height * dar, mod);
                }
            }
            dst_par_num = dst_par_den = 1;
        } break;

        case 128:
        {




            width = MULTIPLE_MOD_UP(cropped_width, 2);
            height = MULTIPLE_MOD_UP(cropped_height, 2);
            dst_par_num = (int64_t)height * cropped_width * src_par.num;
            dst_par_den = (int64_t)width * cropped_height * src_par.den;
        } break;

        case 130:
        {




            if (!keep_height)
            {
                width = MULTIPLE_MOD_UP(geo->geometry.width, mod);
                height = MULTIPLE_MOD_UP(width / storage_aspect + 0.5, mod);
            }
            else
            {
                height = MULTIPLE_MOD_UP(geo->geometry.height, mod);
                width = MULTIPLE_MOD_UP(height * storage_aspect + 0.5, mod);
            }


            if (width < HB_MIN_WIDTH)
            {
                width = HB_MIN_WIDTH;
                height = MULTIPLE_MOD(width / storage_aspect + 0.5, mod);
            }
            if (height < HB_MIN_HEIGHT)
            {
                height = HB_MIN_HEIGHT;
                width = MULTIPLE_MOD(height * storage_aspect + 0.5, mod);
            }
            if (width > maxWidth)
            {
                width = maxWidth;
                height = MULTIPLE_MOD(width / storage_aspect + 0.5, mod);
            }
            if (height > maxHeight)
            {
                height = maxHeight;
                width = MULTIPLE_MOD(height * storage_aspect + 0.5, mod);
            }



            dst_par_num = (int64_t)height * cropped_width * src_par.num;
            dst_par_den = (int64_t)width * cropped_height * src_par.den;
        } break;

        case 131:
        {




            width = MULTIPLE_MOD_UP(geo->geometry.width, mod);
            height = MULTIPLE_MOD_UP(geo->geometry.height, mod);


            if (width < HB_MIN_WIDTH)
            {
                width = HB_MIN_WIDTH;
            }
            if (height < HB_MIN_HEIGHT)
            {
                height = HB_MIN_HEIGHT;
            }
            if (width > maxWidth)
            {
                width = maxWidth;
            }
            if (height > maxHeight)
            {
                height = maxHeight;
            }
            if (keep_display_aspect)
            {




                dst_par_num = (int64_t)height * cropped_width *
                                       src_par.num;
                dst_par_den = (int64_t)width * cropped_height *
                                       src_par.den;
            }
        } break;

        default:
        case 132:
        {
            width = MULTIPLE_MOD_UP(geo->geometry.width, mod);
            height = MULTIPLE_MOD_UP(geo->geometry.height, mod);


            if (width < HB_MIN_WIDTH)
            {
                width = HB_MIN_WIDTH;
            }
            if (height < HB_MIN_HEIGHT)
            {
                height = HB_MIN_HEIGHT;
            }
            if (width > maxWidth)
            {
                width = maxWidth;
            }
            if (height > maxHeight)
            {
                height = maxHeight;
            }



            dst_par_num = (int64_t)height * cropped_width * src_par.num;
            dst_par_den = (int64_t)width * cropped_height * src_par.den;
        } break;
    }
    if (width < HB_MIN_WIDTH || height < HB_MIN_HEIGHT ||
        width > maxWidth || height > maxHeight)
    {



        if (width < HB_MIN_WIDTH)
        {
            width = HB_MIN_WIDTH;
        }
        if (height < HB_MIN_HEIGHT)
        {
            height = HB_MIN_HEIGHT;
        }
        if (width > maxWidth)
        {
            width = maxWidth;
        }
        if (height > maxHeight)
        {
            height = maxHeight;
        }
        if (keep_display_aspect && geo->mode != 129)
        {
            dst_par_num = (int64_t)height * cropped_width * src_par.num;
            dst_par_den = (int64_t)width * cropped_height * src_par.den;
        }
    }


    result->width = width;
    result->height = height;



    hb_limit_rational64(&dst_par_num, &dst_par_den,
                        dst_par_num, dst_par_den, 65535);



    hb_reduce(&out_par.num, &out_par.den, dst_par_num, dst_par_den);
    if (geo->mode == 131 && !keep_display_aspect &&
        out_par.num == in_par.num && out_par.den == in_par.den)
    {
        result->par.num = geo->geometry.par.num;
        result->par.den = geo->geometry.par.den;
    }
    else
    {
        hb_reduce(&result->par.num, &result->par.den, dst_par_num, dst_par_den);
    }
}
