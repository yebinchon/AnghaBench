
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_19__ {int chapter_queue; int context; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_20__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_18__ {int flags; scalar_t__ frametype; scalar_t__ duration; scalar_t__ stop; int start; } ;
struct TYPE_21__ {TYPE_1__ s; int size; int data; } ;
typedef TYPE_4__ hb_buffer_t ;
typedef int hb_buffer_list_t ;
struct TYPE_22__ {int flags; int size; int pts; int data; } ;
typedef TYPE_5__ AVPacket ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_PKT_FLAG_KEY ;
 int EAGAIN ;
 int HB_FLAG_FRAMETYPE_KEY ;
 int HB_FLAG_FRAMETYPE_REF ;
 int av_init_packet (TYPE_5__*) ;
 int av_packet_unref (TYPE_5__*) ;
 int avcodec_receive_packet (int ,TYPE_5__*) ;
 scalar_t__ get_frame_duration (TYPE_2__*,int ) ;
 int get_frame_start (TYPE_2__*,int ) ;
 TYPE_4__* hb_buffer_init (int ) ;
 int hb_buffer_list_append (int *,TYPE_4__*) ;
 int hb_chapter_dequeue (int ,TYPE_4__*) ;
 int hb_log (char*) ;
 int memcpy (int ,int ,int ) ;
 TYPE_4__* process_delay_list (TYPE_2__*,TYPE_4__*) ;

__attribute__((used)) static void get_packets( hb_work_object_t * w, hb_buffer_list_t * list )
{
    hb_work_private_t * pv = w->private_data;

    while (1)
    {
        int ret;
        AVPacket pkt;
        hb_buffer_t * out;

        av_init_packet(&pkt);
        ret = avcodec_receive_packet(pv->context, &pkt);
        if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF)
        {
            break;
        }
        if (ret < 0)
        {
            hb_log("encavcodec: avcodec_receive_packet failed");
        }

        out = hb_buffer_init(pkt.size);
        memcpy(out->data, pkt.data, out->size);

        int64_t frameno = pkt.pts;
        out->size = pkt.size;
        out->s.start = get_frame_start(pv, frameno);
        out->s.duration = get_frame_duration(pv, frameno);
        out->s.stop = out->s.stop + out->s.duration;




        out->s.flags = HB_FLAG_FRAMETYPE_REF;
        out->s.frametype = 0;
        if (pkt.flags & AV_PKT_FLAG_KEY)
        {
            out->s.flags |= HB_FLAG_FRAMETYPE_KEY;
            hb_chapter_dequeue(pv->chapter_queue, out);
        }
        out = process_delay_list(pv, out);

        hb_buffer_list_append(list, out);
        av_packet_unref(&pkt);
    }
}
