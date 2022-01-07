
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;
struct TYPE_8__ {int nb_streams; int packet_size; int is_simple_index; int offset; scalar_t__ first_packet_offset; TYPE_1__** asf_st; } ;
struct TYPE_7__ {int ** streams; int * pb; TYPE_3__* priv_data; } ;
struct TYPE_6__ {scalar_t__ type; int indexed; size_t index; } ;
typedef int GUIDParseTable ;
typedef int AVStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ ASFContext ;


 int AVINDEX_KEYFRAME ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_ERROR ;
 int align_position (int *,int ,int) ;
 int av_add_index_entry (int *,scalar_t__,int ,int,int ,int ) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int av_rescale (int,int,int) ;
 int avio_rl32 (int *) ;
 int avio_rl64 (int *) ;
 scalar_t__ avio_skip (int *,int) ;

__attribute__((used)) static int asf_read_simple_index(AVFormatContext *s, const GUIDParseTable *g)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st = ((void*)0);
    uint64_t interval;
    uint32_t pkt_num, nb_entries;
    int32_t prev_pkt_num = -1;
    int i;
    int64_t offset;
    uint64_t size = avio_rl64(pb);



    for (i = 0; i < asf->nb_streams; i++) {
        if ((asf->asf_st[i]->type == AVMEDIA_TYPE_VIDEO) && !asf->asf_st[i]->indexed) {
            asf->asf_st[i]->indexed = 1;
            st = s->streams[asf->asf_st[i]->index];
            break;
        }
    }
    if (!st) {
        avio_skip(pb, size - 24);
        return 0;
    }
    avio_skip(pb, 16);
    interval = avio_rl64(pb);
    avio_skip(pb, 4);
    nb_entries = avio_rl32(pb);
    for (i = 0; i < nb_entries; i++) {
        pkt_num = avio_rl32(pb);
        offset = avio_skip(pb, 2);
        if (offset < 0) {
            av_log(s, AV_LOG_ERROR, "Skipping failed in asf_read_simple_index.\n");
            return offset;
        }
        if (prev_pkt_num != pkt_num) {
            av_add_index_entry(st, asf->first_packet_offset + asf->packet_size *
                               pkt_num, av_rescale(interval, i, 10000),
                               asf->packet_size, 0, AVINDEX_KEYFRAME);
            prev_pkt_num = pkt_num;
        }
    }
    asf->is_simple_index = 1;
    align_position(pb, asf->offset, size);

    return 0;
}
