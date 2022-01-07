
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_16__ ;


struct TYPE_26__ {TYPE_16__* context; int file; TYPE_5__* job; int frameno_in; int chapter_queue; } ;
typedef TYPE_6__ hb_work_private_t ;
struct TYPE_27__ {TYPE_6__* private_data; } ;
typedef TYPE_7__ hb_work_object_t ;
struct TYPE_24__ {scalar_t__ new_chap; } ;
struct TYPE_22__ {int height; int width; } ;
struct TYPE_28__ {TYPE_4__ s; TYPE_3__* plane; TYPE_2__ f; } ;
typedef TYPE_8__ hb_buffer_t ;
typedef int hb_buffer_list_t ;
struct TYPE_21__ {int member_0; } ;
struct TYPE_29__ {int key_frame; scalar_t__ pts; int quality; int pict_type; int * linesize; int * data; int height; int width; TYPE_1__ member_0; } ;
struct TYPE_25__ {scalar_t__ pass_id; scalar_t__ chapter_markers; } ;
struct TYPE_23__ {int stride; int data; } ;
struct TYPE_20__ {char* stats_out; int global_quality; } ;
typedef TYPE_9__ AVFrame ;


 int AV_PICTURE_TYPE_I ;
 scalar_t__ HB_PASS_ENCODE_1ST ;
 int avcodec_send_frame (TYPE_16__*,TYPE_9__*) ;
 int compute_dts_offset (TYPE_6__*,TYPE_8__*) ;
 int fprintf (int ,char*,char*) ;
 int get_packets (TYPE_7__*,int *) ;
 int hb_chapter_enqueue (int ,TYPE_8__*) ;
 int hb_log (char*) ;
 int save_frame_info (TYPE_6__*,TYPE_8__*) ;

__attribute__((used)) static void Encode( hb_work_object_t *w, hb_buffer_t *in,
                    hb_buffer_list_t *list )
{
    hb_work_private_t * pv = w->private_data;
    AVFrame frame = {{0}};
    int ret;

    frame.width = in->f.width;
    frame.height = in->f.height;
    frame.data[0] = in->plane[0].data;
    frame.data[1] = in->plane[1].data;
    frame.data[2] = in->plane[2].data;
    frame.linesize[0] = in->plane[0].stride;
    frame.linesize[1] = in->plane[1].stride;
    frame.linesize[2] = in->plane[2].stride;

    if (in->s.new_chap > 0 && pv->job->chapter_markers)
    {





        frame.pict_type = AV_PICTURE_TYPE_I;
        frame.key_frame = 1;
        hb_chapter_enqueue(pv->chapter_queue, in);
    }



    frame.quality = pv->context->global_quality;
    save_frame_info(pv, in);
    compute_dts_offset(pv, in);

    frame.pts = pv->frameno_in++;


    ret = avcodec_send_frame(pv->context, &frame);
    if (ret < 0)
    {
        hb_log("encavcodec: avcodec_send_frame failed");
        return;
    }


    if (pv->job->pass_id == HB_PASS_ENCODE_1ST &&
        pv->context->stats_out != ((void*)0))
    {
        fprintf( pv->file, "%s", pv->context->stats_out );
    }

    get_packets(w, list);
}
