
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int i_type; scalar_t__ b_keyframe; int i_dts; int i_pts; } ;
typedef TYPE_3__ x264_picture_t ;
struct TYPE_19__ {int i_payload; int i_type; scalar_t__ i_ref_idc; int p_payload; } ;
typedef TYPE_4__ x264_nal_t ;
struct TYPE_20__ {int chapter_queue; TYPE_7__* job; } ;
typedef TYPE_5__ hb_work_private_t ;
struct TYPE_21__ {TYPE_1__* config; TYPE_5__* private_data; } ;
typedef TYPE_6__ hb_work_object_t ;
struct TYPE_22__ {int inline_parameter_sets; int height; int width; } ;
typedef TYPE_7__ hb_job_t ;
struct TYPE_17__ {scalar_t__ frametype; int flags; int renderOffset; void* stop; int start; void* duration; } ;
struct TYPE_23__ {int size; TYPE_2__ s; scalar_t__ data; } ;
typedef TYPE_8__ hb_buffer_t ;
struct TYPE_16__ {int init_delay; } ;


 void* AV_NOPTS_VALUE ;
 int HB_FLAG_FRAMETYPE_KEY ;
 int HB_FLAG_FRAMETYPE_REF ;
 scalar_t__ HB_FRAME_B ;
 void* HB_FRAME_BREF ;
 scalar_t__ HB_FRAME_I ;
 scalar_t__ HB_FRAME_IDR ;
 scalar_t__ HB_FRAME_P ;

 scalar_t__ NAL_PRIORITY_DISPOSABLE ;
 int hb_buffer_close (TYPE_8__**) ;
 int hb_chapter_dequeue (int ,TYPE_8__*) ;
 TYPE_8__* hb_video_buffer_init (int ,int ) ;
 int memcpy (scalar_t__,int ,int) ;

__attribute__((used)) static hb_buffer_t *nal_encode( hb_work_object_t *w, x264_picture_t *pic_out,
                                int i_nal, x264_nal_t *nal )
{
    hb_buffer_t *buf = ((void*)0);
    hb_work_private_t *pv = w->private_data;
    hb_job_t *job = pv->job;


    buf = hb_video_buffer_init( job->width, job->height );
    buf->size = 0;
    buf->s.frametype = 0;


    buf->s.duration = AV_NOPTS_VALUE;
    buf->s.start = pic_out->i_pts;
    buf->s.stop = AV_NOPTS_VALUE;
    buf->s.renderOffset = pic_out->i_dts;
    if ( !w->config->init_delay && pic_out->i_dts < 0 )
    {
        w->config->init_delay = -pic_out->i_dts;
    }


    switch (pic_out->i_type)
    {
        case 129:
            buf->s.frametype = HB_FRAME_IDR;
            break;

        case 128:
            buf->s.frametype = HB_FRAME_P;
            break;

        case 132:
            buf->s.frametype = HB_FRAME_B;
            break;

        case 131:
            buf->s.frametype = HB_FRAME_BREF;
            break;

        case 130:
        default:
            buf->s.frametype = HB_FRAME_I;
            break;
    }
    buf->s.flags = 0;

    if (pic_out->b_keyframe)
    {
        buf->s.flags |= HB_FLAG_FRAMETYPE_KEY;




        hb_chapter_dequeue(pv->chapter_queue, buf);
    }






    int i;
    buf->s.flags &= ~HB_FLAG_FRAMETYPE_REF;
    for( i = 0; i < i_nal; i++ )
    {
        int size = nal[i].i_payload;
        memcpy(buf->data + buf->size, nal[i].p_payload, size);
        if( size < 1 )
        {
            continue;
        }


        switch( nal[i].i_type )
        {



            case 133:
            case 137:
                if (!job->inline_parameter_sets)
                {
                    continue;
                }
                break;

            case 134:
            case 135:
            case 136:
            default:
                break;
        }







        if (nal[i].i_ref_idc != NAL_PRIORITY_DISPOSABLE)
        {
            if (buf->s.frametype == HB_FRAME_B)
            {
                buf->s.frametype = HB_FRAME_BREF;
            }
            buf->s.flags |= HB_FLAG_FRAMETYPE_REF;
        }

        buf->size += size;
    }

    if ( buf->size <= 0 )
    {

        hb_buffer_close( &buf );
    }
    return buf;
}
