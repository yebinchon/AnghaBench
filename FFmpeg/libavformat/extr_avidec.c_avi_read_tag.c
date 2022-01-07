
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int metadata; int * pb; } ;
struct TYPE_5__ {int metadata; } ;
typedef TYPE_1__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_DICT_DONT_STRDUP_VAL ;
 int AV_WL32 (char*,int) ;
 int EINVAL ;
 int ENOMEM ;
 int UINT_MAX ;
 int av_dict_set (int *,char*,char*,int ) ;
 int av_freep (char**) ;
 char* av_malloc (int) ;
 int avio_read (int *,char*,int) ;

__attribute__((used)) static int avi_read_tag(AVFormatContext *s, AVStream *st, uint32_t tag,
                        uint32_t size)
{
    AVIOContext *pb = s->pb;
    char key[5] = { 0 };
    char *value;

    size += (size & 1);

    if (size == UINT_MAX)
        return AVERROR(EINVAL);
    value = av_malloc(size + 1);
    if (!value)
        return AVERROR(ENOMEM);
    if (avio_read(pb, value, size) != size) {
        av_freep(&value);
        return AVERROR_INVALIDDATA;
    }
    value[size] = 0;

    AV_WL32(key, tag);

    return av_dict_set(st ? &st->metadata : &s->metadata, key, value,
                       AV_DICT_DONT_STRDUP_VAL);
}
