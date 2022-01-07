
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_17__ {int new_chap; int scr_sequence; int pts; scalar_t__ sequence; } ;
typedef TYPE_1__ reordered_data_t ;
struct TYPE_18__ {int frametype; int discard; int new_chap; int scr_sequence; int pts; scalar_t__ size; int * data; } ;
typedef TYPE_2__ packet_info_t ;
struct TYPE_19__ {int decode_errors; int frame; int context; TYPE_8__* palette; int sequence; } ;
typedef TYPE_3__ hb_work_private_t ;
struct TYPE_21__ {int data; int size; } ;
struct TYPE_20__ {int flags; scalar_t__ size; int * data; int dts; int pts; } ;
typedef TYPE_4__ AVPacket ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVPALETTE_SIZE ;
 int AV_LOG_QUIET ;
 int AV_PKT_DATA_PALETTE ;
 int AV_PKT_FLAG_DISCARD ;
 int AV_PKT_FLAG_KEY ;
 int EAGAIN ;
 int HB_FRAME_MASK_KEY ;
 int MIN (int ,int ) ;
 int av_init_packet (TYPE_4__*) ;
 int av_log_get_level () ;
 int av_log_set_level (int) ;
 int * av_packet_new_side_data (TYPE_4__*,int ,int ) ;
 int av_packet_unref (TYPE_4__*) ;
 int avcodec_receive_frame (int ,int ) ;
 int avcodec_send_packet (int ,TYPE_4__*) ;
 int compute_frame_duration (TYPE_3__*) ;
 int filter_video (TYPE_3__*) ;
 int global_verbosity_level ;
 int hb_buffer_close (TYPE_8__**) ;
 TYPE_1__* malloc (int) ;
 int memcpy (int *,int ,int) ;
 int reordered_hash_add (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static int decodeFrame( hb_work_private_t * pv, packet_info_t * packet_info )
{
    int got_picture = 0, oldlevel = 0, ret;
    AVPacket avp;
    reordered_data_t * reordered;

    if ( global_verbosity_level <= 1 )
    {
        oldlevel = av_log_get_level();
        av_log_set_level( AV_LOG_QUIET );
    }

    av_init_packet(&avp);
    if (packet_info != ((void*)0))
    {
        avp.data = packet_info->data;
        avp.size = packet_info->size;
        avp.pts = pv->sequence;
        avp.dts = pv->sequence;
        reordered = malloc(sizeof(*reordered));
        if (reordered != ((void*)0))
        {
            reordered->sequence = pv->sequence++;
            reordered->pts = packet_info->pts;
            reordered->scr_sequence = packet_info->scr_sequence;
            reordered->new_chap = packet_info->new_chap;
            reordered_hash_add(pv, reordered);
        }




        if (packet_info->frametype & HB_FRAME_MASK_KEY)
        {
            avp.flags |= AV_PKT_FLAG_KEY;
        }
        avp.flags |= packet_info->discard * AV_PKT_FLAG_DISCARD;
    }
    else
    {
        avp.data = ((void*)0);
        avp.size = 0;
    }

    if (pv->palette != ((void*)0))
    {
        uint8_t * palette;
        int size;
        palette = av_packet_new_side_data(&avp, AV_PKT_DATA_PALETTE,
                                          AVPALETTE_SIZE);
        size = MIN(pv->palette->size, AVPALETTE_SIZE);
        memcpy(palette, pv->palette->data, size);
        hb_buffer_close(&pv->palette);
    }

    ret = avcodec_send_packet(pv->context, &avp);
    av_packet_unref(&avp);
    if (ret < 0 && ret != AVERROR_EOF)
    {
        ++pv->decode_errors;
        return 0;
    }

    do
    {
        ret = avcodec_receive_frame(pv->context, pv->frame);
        if (ret < 0 && ret != AVERROR(EAGAIN) && ret != AVERROR_EOF)
        {
            ++pv->decode_errors;
        }
        if (ret < 0)
        {
            break;
        }
        got_picture = 1;


        compute_frame_duration( pv );
        filter_video(pv);
    } while (ret >= 0);

    if ( global_verbosity_level <= 1 )
    {
        av_log_set_level( oldlevel );
    }

    return got_picture;
}
