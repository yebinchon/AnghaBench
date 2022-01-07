
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lang ;
typedef int int64_t ;
struct TYPE_5__ {int * stream_languages; } ;
struct TYPE_4__ {TYPE_2__* priv_data; int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASFContext ;


 int av_strlcpy (int ,char*,int) ;
 int avio_get_str16le (int *,unsigned int,char*,int) ;
 unsigned int avio_r8 (int *) ;
 int avio_rl16 (int *) ;
 int avio_skip (int *,unsigned int) ;

__attribute__((used)) static int asf_read_language_list(AVFormatContext *s, int64_t size)
{
    AVIOContext *pb = s->pb;
    ASFContext *asf = s->priv_data;
    int j, ret;
    int stream_count = avio_rl16(pb);
    for (j = 0; j < stream_count; j++) {
        char lang[6];
        unsigned int lang_len = avio_r8(pb);
        if ((ret = avio_get_str16le(pb, lang_len, lang,
                                    sizeof(lang))) < lang_len)
            avio_skip(pb, lang_len - ret);
        if (j < 128)
            av_strlcpy(asf->stream_languages[j], lang,
                       sizeof(*asf->stream_languages));
    }

    return 0;
}
