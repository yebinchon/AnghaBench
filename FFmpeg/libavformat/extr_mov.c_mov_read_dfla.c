
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int buf ;
struct TYPE_11__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_10__ {int codecpar; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_8__ {TYPE_6__* fc; } ;
typedef TYPE_1__ MOVContext ;
typedef TYPE_2__ MOVAtom ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int FLAC_METADATA_TYPE_STREAMINFO ;
 int FLAC_STREAMINFO_SIZE ;
 int av_log (TYPE_6__*,int ,char*) ;
 scalar_t__ avio_r8 (int *) ;
 int avio_rb24 (int *) ;
 int avio_read (int *,int *,int) ;
 int ff_get_extradata (TYPE_6__*,int ,int *,int) ;
 int flac_parse_block_header (int *,int*,int*,int*) ;

__attribute__((used)) static int mov_read_dfla(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    int last, type, size, ret;
    uint8_t buf[4];

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];

    if ((uint64_t)atom.size > (1<<30) || atom.size < 42)
        return AVERROR_INVALIDDATA;


    if (avio_r8(pb) != 0)
        return AVERROR_INVALIDDATA;

    avio_rb24(pb);

    avio_read(pb, buf, sizeof(buf));
    flac_parse_block_header(buf, &last, &type, &size);

    if (type != FLAC_METADATA_TYPE_STREAMINFO || size != FLAC_STREAMINFO_SIZE) {
        av_log(c->fc, AV_LOG_ERROR, "STREAMINFO must be first FLACMetadataBlock\n");
        return AVERROR_INVALIDDATA;
    }

    ret = ff_get_extradata(c->fc, st->codecpar, pb, size);
    if (ret < 0)
        return ret;

    if (!last)
        av_log(c->fc, AV_LOG_WARNING, "non-STREAMINFO FLACMetadataBlock(s) ignored\n");

    return 0;
}
