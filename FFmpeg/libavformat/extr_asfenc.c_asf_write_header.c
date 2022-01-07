
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nb_index_memory_alloc; int packet_timestamp_start; int packet_timestamp_end; int packet_buf; int pb; scalar_t__ packet_nb_payloads; int index_ptr; scalar_t__ maximum_packet; scalar_t__ nb_packets; int packet_size; } ;
struct TYPE_6__ {int nb_streams; int avoid_negative_ts; int packet_size; int pb; scalar_t__ max_interleave_delta; TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;
typedef int ASFIndex ;
typedef TYPE_2__ ASFContext ;


 int ASF_INDEX_BLOCK ;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int DATA_HEADER_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ asf_write_header1 (TYPE_1__*,int ,int ) ;
 int av_freep (int *) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int av_malloc (int) ;
 int avio_flush (int ) ;
 int ffio_init_context (int *,int ,int ,int,int *,int *,int *,int *) ;

__attribute__((used)) static int asf_write_header(AVFormatContext *s)
{
    ASFContext *asf = s->priv_data;

    s->packet_size = asf->packet_size;
    s->max_interleave_delta = 0;
    asf->nb_packets = 0;

    if (s->nb_streams > 127) {
        av_log(s, AV_LOG_ERROR, "ASF can only handle 127 streams\n");
        return AVERROR(EINVAL);
    }

    asf->index_ptr = av_malloc(sizeof(ASFIndex) * ASF_INDEX_BLOCK);
    if (!asf->index_ptr)
        return AVERROR(ENOMEM);
    asf->nb_index_memory_alloc = ASF_INDEX_BLOCK;
    asf->maximum_packet = 0;




    if (asf_write_header1(s, 0, DATA_HEADER_SIZE) < 0) {

        av_freep(&asf->index_ptr);
        return -1;
    }

    avio_flush(s->pb);

    asf->packet_nb_payloads = 0;
    asf->packet_timestamp_start = -1;
    asf->packet_timestamp_end = -1;
    ffio_init_context(&asf->pb, asf->packet_buf, s->packet_size, 1,
                      ((void*)0), ((void*)0), ((void*)0), ((void*)0));

    if (s->avoid_negative_ts < 0)
        s->avoid_negative_ts = 1;

    return 0;
}
