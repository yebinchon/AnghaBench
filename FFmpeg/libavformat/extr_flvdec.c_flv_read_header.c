
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ start_time; int pb; int ctx_flags; TYPE_1__* iformat; TYPE_2__* priv_data; } ;
struct TYPE_7__ {int missing_streams; int last_keyframe_stream_index; scalar_t__ sum_flv_tag_size; } ;
struct TYPE_6__ {int name; } ;
typedef TYPE_2__ FLVContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVFMTCTX_NOHEADER ;
 int AV_LOG_WARNING ;
 int FLV_HEADER_FLAG_HASAUDIO ;
 int FLV_HEADER_FLAG_HASVIDEO ;
 int SEEK_SET ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avio_r8 (int ) ;
 int avio_rb32 (int ) ;
 int avio_seek (int ,int,int ) ;
 int avio_skip (int ,int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int flv_read_header(AVFormatContext *s)
{
    int flags;
    FLVContext *flv = s->priv_data;
    int offset;
    int pre_tag_size = 0;


    if(!strcmp(s->iformat->name, "kux"))
        avio_skip(s->pb, 0xe40000);

    avio_skip(s->pb, 4);
    flags = avio_r8(s->pb);

    flv->missing_streams = flags & (FLV_HEADER_FLAG_HASVIDEO | FLV_HEADER_FLAG_HASAUDIO);

    s->ctx_flags |= AVFMTCTX_NOHEADER;

    offset = avio_rb32(s->pb);
    avio_seek(s->pb, offset, SEEK_SET);






    pre_tag_size = avio_rb32(s->pb);
    if (pre_tag_size) {
        av_log(s, AV_LOG_WARNING, "Read FLV header error, input file is not a standard flv format, first PreviousTagSize0 always is 0\n");
    }

    s->start_time = 0;
    flv->sum_flv_tag_size = 0;
    flv->last_keyframe_stream_index = -1;

    return 0;
}
