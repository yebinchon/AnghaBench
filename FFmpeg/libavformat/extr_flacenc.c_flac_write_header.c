
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct AVFormatContext {int pb; TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_6__ {int extradata_size; int extradata; } ;
struct TYPE_5__ {size_t audio_stream_idx; int waiting_pics; int write_header; } ;
struct TYPE_4__ {TYPE_3__* codecpar; } ;
typedef TYPE_2__ FlacMuxerContext ;
typedef TYPE_3__ AVCodecParameters ;


 int ff_flac_write_header (int ,int ,int ,int ) ;
 int flac_finish_header (struct AVFormatContext*) ;

__attribute__((used)) static int flac_write_header(struct AVFormatContext *s)
{
    FlacMuxerContext *c = s->priv_data;
    AVCodecParameters *par = s->streams[c->audio_stream_idx]->codecpar;
    int ret;

    if (!c->write_header)
        return 0;

    ret = ff_flac_write_header(s->pb, par->extradata,
                               par->extradata_size, 0);
    if (ret < 0)
        return ret;

    if (!c->waiting_pics)
        ret = flac_finish_header(s);

    return ret;
}
