
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int metadata; int pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int AV_DICT_DONT_STRDUP_VAL ;
 int AV_WL32 (char*,int ) ;
 int FFMIN (unsigned int,unsigned int) ;
 int UINT_MAX ;
 int av_dict_set (int *,char*,char*,int ) ;
 char* av_malloc (int) ;
 int avio_read (int ,char*,int) ;

__attribute__((used)) static void add_metadata(AVFormatContext *s, uint32_t tag,
                         unsigned int tag_len, unsigned int remaining)
{
    int len = FFMIN(tag_len, remaining);
    char *buf, key[5] = {0};

    if (len == UINT_MAX)
        return;

    buf = av_malloc(len+1);
    if (!buf)
        return;
    avio_read(s->pb, buf, len);
    buf[len] = 0;
    AV_WL32(key, tag);
    av_dict_set(&s->metadata, key, buf, AV_DICT_DONT_STRDUP_VAL);
}
