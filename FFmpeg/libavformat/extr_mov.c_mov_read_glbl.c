
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_15__ {int extradata_size; unsigned int codec_tag; int codec_id; scalar_t__ extradata; } ;
struct TYPE_14__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_13__ {TYPE_9__* codecpar; } ;
struct TYPE_12__ {int size; unsigned int type; } ;
struct TYPE_11__ {TYPE_8__* fc; } ;
typedef TYPE_1__ MOVContext ;
typedef TYPE_2__ MOVAtom ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int AV_CODEC_ID_HEVC ;
 int AV_LOG_WARNING ;
 unsigned int MKTAG (char,char,char,char) ;
 int SEEK_CUR ;
 int av_freep (scalar_t__*) ;
 int av_log (TYPE_8__*,int ,char*) ;
 unsigned int avio_rb32 (int *) ;
 unsigned int avio_rl32 (int *) ;
 int avio_seek (int *,int,int ) ;
 int ff_get_extradata (TYPE_8__*,TYPE_9__*,int *,unsigned int) ;
 int mov_read_default (TYPE_1__*,int *,TYPE_2__) ;

__attribute__((used)) static int mov_read_glbl(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    int ret;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];

    if ((uint64_t)atom.size > (1<<30))
        return AVERROR_INVALIDDATA;

    if (atom.size >= 10) {


        unsigned size = avio_rb32(pb);
        unsigned type = avio_rl32(pb);
        avio_seek(pb, -8, SEEK_CUR);
        if (type == MKTAG('f','i','e','l') && size == atom.size)
            return mov_read_default(c, pb, atom);
    }
    if (st->codecpar->extradata_size > 1 && st->codecpar->extradata) {
        av_log(c->fc, AV_LOG_WARNING, "ignoring multiple glbl\n");
        return 0;
    }
    av_freep(&st->codecpar->extradata);
    ret = ff_get_extradata(c->fc, st->codecpar, pb, atom.size);
    if (ret < 0)
        return ret;
    if (atom.type == MKTAG('h','v','c','C') && st->codecpar->codec_tag == MKTAG('d','v','h','1'))





        st->codecpar->codec_id = AV_CODEC_ID_HEVC;

    return 0;
}
