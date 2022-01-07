
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int metadata; int pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_DICT_DONT_STRDUP_VAL ;
 int EIO ;
 int ENOMEM ;
 int av_dict_set (int *,char const* const,scalar_t__*,int ) ;
 int av_free (scalar_t__*) ;
 scalar_t__* av_malloc (unsigned int const) ;
 unsigned int const avio_read (int ,scalar_t__*,unsigned int const) ;

__attribute__((used)) static int get_metadata(AVFormatContext *s,
                        const char *const tag,
                        const unsigned data_size)
{
    uint8_t *buf = ((data_size + 1) == 0) ? ((void*)0) : av_malloc(data_size + 1);

    if (!buf)
        return AVERROR(ENOMEM);

    if (avio_read(s->pb, buf, data_size) != data_size) {
        av_free(buf);
        return AVERROR(EIO);
    }
    buf[data_size] = 0;
    av_dict_set(&s->metadata, tag, buf, AV_DICT_DONT_STRDUP_VAL);
    return 0;
}
