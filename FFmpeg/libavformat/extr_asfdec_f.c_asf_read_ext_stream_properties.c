
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int64_t ;
typedef int * ff_asf_guid ;
struct TYPE_11__ {int* stream_bitrates; TYPE_1__* streams; } ;
struct TYPE_10__ {int size; int type; } ;
struct TYPE_9__ {int * pb; TYPE_4__* priv_data; } ;
struct TYPE_8__ {unsigned int stream_language_index; scalar_t__ payload_ext_ct; TYPE_3__* payload; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ ASFPayload ;
typedef TYPE_4__ ASFContext ;


 int AV_LOG_DEBUG ;
 int FF_ARRAY_ELEMS (TYPE_3__*) ;
 int av_log (TYPE_2__*,int ,char*,int ,int) ;
 void* avio_rl16 (int *) ;
 int avio_rl32 (int *) ;
 int avio_rl64 (int *) ;
 int avio_skip (int *,int) ;
 int ff_get_guid (int *,int **) ;

__attribute__((used)) static int asf_read_ext_stream_properties(AVFormatContext *s, int64_t size)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    ff_asf_guid g;
    int ext_len, payload_ext_ct, stream_ct, i;
    uint32_t leak_rate, stream_num;
    unsigned int stream_languageid_index;

    avio_rl64(pb);
    avio_rl64(pb);
    leak_rate = avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    stream_num = avio_rl16(pb);

    stream_languageid_index = avio_rl16(pb);
    if (stream_num < 128)
        asf->streams[stream_num].stream_language_index = stream_languageid_index;

    avio_rl64(pb);
    stream_ct = avio_rl16(pb);
    payload_ext_ct = avio_rl16(pb);

    if (stream_num < 128) {
        asf->stream_bitrates[stream_num] = leak_rate;
        asf->streams[stream_num].payload_ext_ct = 0;
    }

    for (i = 0; i < stream_ct; i++) {
        avio_rl16(pb);
        ext_len = avio_rl16(pb);
        avio_skip(pb, ext_len);
    }

    for (i = 0; i < payload_ext_ct; i++) {
        int size;
        ff_get_guid(pb, &g);
        size = avio_rl16(pb);
        ext_len = avio_rl32(pb);
        avio_skip(pb, ext_len);
        if (stream_num < 128 && i < FF_ARRAY_ELEMS(asf->streams[stream_num].payload)) {
            ASFPayload *p = &asf->streams[stream_num].payload[i];
            p->type = g[0];
            p->size = size;
            av_log(s, AV_LOG_DEBUG, "Payload extension %x %d\n", g[0], p->size );
            asf->streams[stream_num].payload_ext_ct ++;
        }
    }

    return 0;
}
