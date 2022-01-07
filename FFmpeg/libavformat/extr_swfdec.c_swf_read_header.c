
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int ctx_flags; TYPE_2__* pb; TYPE_1__* priv_data; } ;
struct TYPE_14__ {scalar_t__ seekable; } ;
struct TYPE_13__ {scalar_t__ samples_per_frame; int frame_rate; TYPE_2__* zpb; void* zbuf_out; void* zbuf_in; int zstream; } ;
typedef TYPE_1__ SWFContext ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVFMTCTX_NOHEADER ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int MKBETAG (float,char,char,int ) ;
 int ZBUF_SIZE ;
 scalar_t__ Z_OK ;
 int av_freep (void**) ;
 int av_log (TYPE_3__*,int ,char*) ;
 void* av_malloc (int ) ;
 TYPE_2__* avio_alloc_context (void*,int ,int ,TYPE_3__*,int ,int *,int *) ;
 int avio_r8 (TYPE_2__*) ;
 int avio_rb32 (TYPE_2__*) ;
 int avio_rl16 (TYPE_2__*) ;
 int avio_rl32 (TYPE_2__*) ;
 int avio_skip (TYPE_2__*,int) ;
 scalar_t__ inflateInit (int *) ;
 int zlib_refill ;

__attribute__((used)) static int swf_read_header(AVFormatContext *s)
{
    SWFContext *swf = s->priv_data;
    AVIOContext *pb = s->pb;
    int nbits, len, tag;

    tag = avio_rb32(pb) & 0xffffff00;
    avio_rl32(pb);

    if (tag == MKBETAG('C', 'W', 'S', 0)) {
        av_log(s, AV_LOG_INFO, "SWF compressed file detected\n");
        av_log(s, AV_LOG_ERROR, "zlib support is required to read SWF compressed files\n");
        return AVERROR(EIO);

    } else if (tag != MKBETAG('F', 'W', 'S', 0))
        return AVERROR(EIO);

    nbits = avio_r8(pb) >> 3;
    len = (4 * nbits - 3 + 7) / 8;
    avio_skip(pb, len);
    swf->frame_rate = avio_rl16(pb);
    avio_rl16(pb);

    swf->samples_per_frame = 0;
    s->ctx_flags |= AVFMTCTX_NOHEADER;
    return 0;
}
