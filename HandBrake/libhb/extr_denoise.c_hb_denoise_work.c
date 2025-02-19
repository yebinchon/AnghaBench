
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int color_range; int color_matrix; int color_transfer; int color_prim; int pix_fmt; } ;
struct TYPE_16__ {int * hqdn3d_coef; int * hqdn3d_frame; scalar_t__ hqdn3d_line; TYPE_2__ output; } ;
typedef TYPE_5__ hb_filter_private_t ;
struct TYPE_17__ {TYPE_5__* private_data; } ;
typedef TYPE_6__ hb_filter_object_t ;
struct TYPE_15__ {int flags; } ;
struct TYPE_12__ {int color_range; int color_matrix; int color_transfer; int color_prim; int height; int width; } ;
struct TYPE_18__ {TYPE_4__ s; TYPE_3__* plane; TYPE_1__ f; } ;
typedef TYPE_7__ hb_buffer_t ;
struct TYPE_14__ {int stride; int height; int data; } ;


 int HB_BUF_FLAG_EOF ;
 int HB_FILTER_DONE ;
 int HB_FILTER_OK ;
 TYPE_7__* hb_frame_buffer_init (int ,int ,int ) ;
 int hqdn3d_denoise (int ,int ,scalar_t__,int *,int,int ,int ,int ) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static int hb_denoise_work( hb_filter_object_t * filter,
                            hb_buffer_t ** buf_in,
                            hb_buffer_t ** buf_out )
{
    hb_filter_private_t * pv = filter->private_data;
    hb_buffer_t * in = *buf_in, * out;

    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        *buf_out = in;
        *buf_in = ((void*)0);
        return HB_FILTER_DONE;
    }

    out = hb_frame_buffer_init(pv->output.pix_fmt, in->f.width, in->f.height);
    out->f.color_prim = pv->output.color_prim;
    out->f.color_transfer = pv->output.color_transfer;
    out->f.color_matrix = pv->output.color_matrix;
    out->f.color_range = pv->output.color_range ;


    if( !pv->hqdn3d_line )
    {
        pv->hqdn3d_line = malloc( in->plane[0].stride * sizeof(unsigned short) );
    }

    int c, coef_index;

    for ( c = 0; c < 3; c++ )
    {
        coef_index = c * 2;
        hqdn3d_denoise( in->plane[c].data,
                        out->plane[c].data,
                        pv->hqdn3d_line,
                        &pv->hqdn3d_frame[c],
                        in->plane[c].stride,
                        in->plane[c].height,
                        pv->hqdn3d_coef[coef_index],
                        pv->hqdn3d_coef[coef_index+1] );
    }

    out->s = in->s;
    *buf_out = out;

    return HB_FILTER_OK;
}
