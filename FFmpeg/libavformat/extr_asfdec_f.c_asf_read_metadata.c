
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_9__ {TYPE_1__* dar; } ;
struct TYPE_8__ {int * pb; TYPE_3__* priv_data; } ;
struct TYPE_7__ {int num; int den; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ ASFContext ;


 int AVERROR (int ) ;
 int AV_LOG_TRACE ;
 int ENOMEM ;
 int av_freep (int **) ;
 int av_log (TYPE_2__*,int ,char*,int,int,int,int,int,int *) ;
 int * av_malloc (int) ;
 int avio_get_str16le (int *,int,int *,int) ;
 int avio_rl16 (int *) ;
 int avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int get_tag (TYPE_2__*,int *,int,int,int) ;
 int get_value (int *,int,int) ;
 int strcmp (int *,char*) ;

__attribute__((used)) static int asf_read_metadata(AVFormatContext *s, int64_t size)
{
    AVIOContext *pb = s->pb;
    ASFContext *asf = s->priv_data;
    int n, stream_num, name_len_utf16, name_len_utf8, value_len;
    int ret, i;
    n = avio_rl16(pb);

    for (i = 0; i < n; i++) {
        uint8_t *name;
        int value_type;

        avio_rl16(pb);
        stream_num = avio_rl16(pb);
        name_len_utf16 = avio_rl16(pb);
        value_type = avio_rl16(pb);
        value_len = avio_rl32(pb);

        name_len_utf8 = 2*name_len_utf16 + 1;
        name = av_malloc(name_len_utf8);
        if (!name)
            return AVERROR(ENOMEM);

        if ((ret = avio_get_str16le(pb, name_len_utf16, name, name_len_utf8)) < name_len_utf16)
            avio_skip(pb, name_len_utf16 - ret);
        av_log(s, AV_LOG_TRACE, "%d stream %d name_len %2d type %d len %4d <%s>\n",
                i, stream_num, name_len_utf16, value_type, value_len, name);

        if (!strcmp(name, "AspectRatioX")){
            int aspect_x = get_value(s->pb, value_type, 16);
            if(stream_num < 128)
                asf->dar[stream_num].num = aspect_x;
        } else if(!strcmp(name, "AspectRatioY")){
            int aspect_y = get_value(s->pb, value_type, 16);
            if(stream_num < 128)
                asf->dar[stream_num].den = aspect_y;
        } else {
            get_tag(s, name, value_type, value_len, 16);
        }
        av_freep(&name);
    }

    return 0;
}
