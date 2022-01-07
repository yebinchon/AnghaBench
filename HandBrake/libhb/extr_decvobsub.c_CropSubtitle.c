
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_17__ {int width; int height; scalar_t__ y; scalar_t__ x; int scr_sequence; int pts_stop; int pts_start; } ;
typedef TYPE_5__ hb_work_private_t ;
struct TYPE_18__ {TYPE_3__* subtitle; TYPE_5__* private_data; } ;
typedef TYPE_6__ hb_work_object_t ;
struct TYPE_14__ {int window_height; int window_width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_13__ {int scr_sequence; int stop; int start; int frametype; } ;
struct TYPE_19__ {TYPE_4__* plane; TYPE_2__ f; TYPE_1__ s; } ;
typedef TYPE_7__ hb_buffer_t ;
struct TYPE_16__ {int stride; int * data; int width; } ;
struct TYPE_15__ {int height; int width; } ;


 int AV_PIX_FMT_YUVA420P ;
 int ColumnIsTransparent (TYPE_6__*,int *) ;
 int HB_FRAME_SUBTITLE ;
 int LineIsTransparent (TYPE_6__*,int *) ;
 TYPE_7__* hb_frame_buffer_init (int ,int,int) ;
 int memcpy (int *,int *,int) ;
 int resample (int *,int *,int ,int) ;

__attribute__((used)) static hb_buffer_t * CropSubtitle( hb_work_object_t * w, uint8_t * raw )
{
    hb_work_private_t * pv = w->private_data;
    int i;
    int crop[4] = { -1,-1,-1,-1 };
    uint8_t * alpha;
    int realwidth, realheight;
    hb_buffer_t * buf;
    uint8_t * lum_in, * alpha_in, * u_in, * v_in;

    alpha = raw + pv->width * pv->height;


    for( i = 0; i < pv->height; i++ )
    {
        if( !LineIsTransparent( w, &alpha[i*pv->width] ) )
        {
            crop[0] = i;
            break;
        }
    }

    if( crop[0] < 0 )
    {

        return ((void*)0);
    }


    for( i = pv->height - 1; i >= 0; i-- )
    {
        if( !LineIsTransparent( w, &alpha[i*pv->width] ) )
        {
            crop[1] = i;
            break;
        }
    }


    for( i = 0; i < pv->width; i++ )
    {
        if( !ColumnIsTransparent( w, &alpha[i] ) )
        {
            crop[2] = i;
            break;
        }
    }


    for( i = pv->width - 1; i >= 0; i-- )
    {
        if( !ColumnIsTransparent( w, &alpha[i] ) )
        {
            crop[3] = i;
            break;
        }
    }

    realwidth = crop[3] - crop[2] + 1;
    realheight = crop[1] - crop[0] + 1;

    buf = hb_frame_buffer_init( AV_PIX_FMT_YUVA420P, realwidth, realheight );
    buf->s.frametype = HB_FRAME_SUBTITLE;
    buf->s.start = pv->pts_start;
    buf->s.stop = pv->pts_stop;
    buf->s.scr_sequence = pv->scr_sequence;

    buf->f.x = pv->x + crop[2];
    buf->f.y = pv->y + crop[0];
    buf->f.window_width = w->subtitle->width;
    buf->f.window_height = w->subtitle->height;

    lum_in = raw + crop[0] * pv->width + crop[2];
    alpha_in = lum_in + pv->width * pv->height;
    u_in = alpha_in + pv->width * pv->height;
    v_in = u_in + pv->width * pv->height;

    uint8_t *dst;
    for( i = 0; i < realheight; i++ )
    {

        dst = buf->plane[0].data + buf->plane[0].stride * i;
        memcpy( dst, lum_in, realwidth );

        if( ( i & 1 ) == 0 )
        {

            dst = buf->plane[1].data + buf->plane[1].stride * ( i >> 1 );
            resample( dst, u_in, buf->plane[1].width, realwidth );


            dst = buf->plane[2].data + buf->plane[2].stride * ( i >> 1 );
            resample( dst, v_in, buf->plane[2].width, realwidth );
        }

        dst = buf->plane[3].data + buf->plane[3].stride * i;
        memcpy( dst, alpha_in, realwidth );

        lum_in += pv->width;
        alpha_in += pv->width;
        u_in += pv->width;
        v_in += pv->width;
    }

    return buf;
}
