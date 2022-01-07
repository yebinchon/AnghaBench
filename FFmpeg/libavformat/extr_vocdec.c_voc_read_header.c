
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ remaining_size; } ;
typedef TYPE_1__ VocDecContext ;
struct TYPE_6__ {int ctx_flags; int * pb; TYPE_1__* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVFMTCTX_NOHEADER ;
 int AV_LOG_ERROR ;
 int ENOSYS ;
 int av_log (TYPE_2__*,int ,char*,int) ;
 int avio_rl16 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int voc_read_header(AVFormatContext *s)
{
    VocDecContext *voc = s->priv_data;
    AVIOContext *pb = s->pb;
    int header_size;

    avio_skip(pb, 20);
    header_size = avio_rl16(pb) - 22;
    if (header_size != 4) {
        av_log(s, AV_LOG_ERROR, "unknown header size: %d\n", header_size);
        return AVERROR(ENOSYS);
    }
    avio_skip(pb, header_size);

    s->ctx_flags |= AVFMTCTX_NOHEADER;

    voc->remaining_size = 0;
    return 0;
}
