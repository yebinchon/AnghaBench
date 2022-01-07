
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {unsigned int min_pktsize; void* max_pktsize; void* max_bitrate; void* flags; void* ignore; void* preroll; void* send_time; void* play_time; void* create_time; void* file_size; int guid; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
struct TYPE_6__ {void* packet_size; int * pb; TYPE_3__* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ ASFContext ;


 int AVERROR_INVALIDDATA ;
 void* avio_rl32 (int *) ;
 void* avio_rl64 (int *) ;
 int ff_get_guid (int *,int *) ;

__attribute__((used)) static int asf_read_file_properties(AVFormatContext *s, int64_t size)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;

    ff_get_guid(pb, &asf->hdr.guid);
    asf->hdr.file_size = avio_rl64(pb);
    asf->hdr.create_time = avio_rl64(pb);
    avio_rl64(pb);
    asf->hdr.play_time = avio_rl64(pb);
    asf->hdr.send_time = avio_rl64(pb);
    asf->hdr.preroll = avio_rl32(pb);
    asf->hdr.ignore = avio_rl32(pb);
    asf->hdr.flags = avio_rl32(pb);
    asf->hdr.min_pktsize = avio_rl32(pb);
    asf->hdr.max_pktsize = avio_rl32(pb);
    if (asf->hdr.min_pktsize >= (1U << 29))
        return AVERROR_INVALIDDATA;
    asf->hdr.max_bitrate = avio_rl32(pb);
    s->packet_size = asf->hdr.max_pktsize;

    return 0;
}
