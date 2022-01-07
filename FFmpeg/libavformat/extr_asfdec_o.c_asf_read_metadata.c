
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int metadata; int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AV_LOG_WARNING ;
 scalar_t__ av_dict_set (int *,char const*,unsigned char*,int ) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int avio_get_str16le (int *,int ,unsigned char*,int ) ;

__attribute__((used)) static int asf_read_metadata(AVFormatContext *s, const char *title, uint16_t len,
                             unsigned char *ch, uint16_t buflen)
{
    AVIOContext *pb = s->pb;

    avio_get_str16le(pb, len, ch, buflen);
    if (ch[0]) {
        if (av_dict_set(&s->metadata, title, ch, 0) < 0)
            av_log(s, AV_LOG_WARNING, "av_dict_set failed.\n");
    }

    return 0;
}
