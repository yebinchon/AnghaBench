
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int sws_width; int sws_height; int* crop; int * sws; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_12__ {double window_width; double window_height; int width; int height; double x; double y; int fmt; } ;
struct TYPE_14__ {TYPE_1__ f; } ;
typedef TYPE_3__ hb_buffer_t ;


 double ABS (double) ;
 int AV_PIX_FMT_YUVA420P ;
 int SWS_ACCURATE_RND ;
 int SWS_CS_DEFAULT ;
 int SWS_LANCZOS ;
 TYPE_3__* hb_buffer_dup (TYPE_3__*) ;
 TYPE_3__* hb_frame_buffer_init (int ,int,int) ;
 int hb_picture_fill (int **,int*,TYPE_3__*) ;
 int * hb_sws_get_context (double,double,int ,double,double,int ,int,int ) ;
 int sws_freeContext (int *) ;
 int sws_scale (int *,int const* const*,int*,int ,double,int **,int*) ;

__attribute__((used)) static hb_buffer_t * ScaleSubtitle(hb_filter_private_t *pv,
                                   hb_buffer_t *sub, hb_buffer_t *buf)
{
    hb_buffer_t * scaled;
    double xfactor = 1., yfactor = 1.;


    if (sub->f.window_width > 0 && sub->f.window_height > 0)
    {



        xfactor = (double)buf->f.width / sub->f.window_width;
        yfactor = (double)buf->f.height / sub->f.window_height;



        if (xfactor > yfactor)
        {
            yfactor = xfactor;
        }
        else
        {
            xfactor = yfactor;
        }
    }
    if (ABS(xfactor - 1) > 0.01 || ABS(yfactor - 1) > 0.01)
    {
        uint8_t * in_data[4], * out_data[4];
        int in_stride[4], out_stride[4];
        int width, height;

        width = sub->f.width * xfactor;
        height = sub->f.height * yfactor;

        scaled = hb_frame_buffer_init(AV_PIX_FMT_YUVA420P, width, height);
        if (scaled == ((void*)0))
            return ((void*)0);

        scaled->f.x = sub->f.x * xfactor;
        scaled->f.y = sub->f.y * yfactor;

        hb_picture_fill(in_data, in_stride, sub);
        hb_picture_fill(out_data, out_stride, scaled);

        if (pv->sws == ((void*)0) ||
            pv->sws_width != width ||
            pv->sws_height != height)
        {
            if (pv->sws!= ((void*)0))
                sws_freeContext(pv->sws);
            pv->sws = hb_sws_get_context(
                                sub->f.width, sub->f.height, sub->f.fmt,
                                scaled->f.width, scaled->f.height, sub->f.fmt,
                                SWS_LANCZOS|SWS_ACCURATE_RND, SWS_CS_DEFAULT);
            pv->sws_width = width;
            pv->sws_height = height;
        }
        sws_scale(pv->sws, (const uint8_t* const *)in_data, in_stride,
                  0, sub->f.height, out_data, out_stride);
    }
    else
    {
        scaled = hb_buffer_dup(sub);
    }

    int top, left, margin_top, margin_percent;





    margin_percent = 2;






    margin_top = ( ( buf->f.height - pv->crop[0] - pv->crop[1] ) *
                   margin_percent ) / 100;

    if( margin_top > 20 )
    {



        margin_top = 20;
    }

    if( scaled->f.height > buf->f.height - pv->crop[0] - pv->crop[1] -
        ( margin_top * 2 ) )
    {




        top = pv->crop[0] + ( buf->f.height - pv->crop[0] -
                                      pv->crop[1] - scaled->f.height ) / 2;
    }
    else if( scaled->f.y < pv->crop[0] + margin_top )
    {




        top = pv->crop[0] + margin_top;
    }
    else if( scaled->f.y > buf->f.height - pv->crop[1] - margin_top - scaled->f.height )
    {





        top = buf->f.height - pv->crop[1] - margin_top - scaled->f.height;
    }
    else
    {



        top = scaled->f.y;
    }

    if( scaled->f.width > buf->f.width - pv->crop[2] - pv->crop[3] - 40 )
        left = pv->crop[2] + ( buf->f.width - pv->crop[2] -
                pv->crop[3] - scaled->f.width ) / 2;
    else if( scaled->f.x < pv->crop[2] + 20 )
        left = pv->crop[2] + 20;
    else if( scaled->f.x > buf->f.width - pv->crop[3] - 20 - scaled->f.width )
        left = buf->f.width - pv->crop[3] - 20 - scaled->f.width;
    else
        left = scaled->f.x;

    scaled->f.x = left;
    scaled->f.y = top;

    return scaled;
}
