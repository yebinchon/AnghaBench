
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int metadata; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int atoi (int ) ;
 TYPE_2__* av_dict_get (int ,char const*,int *,int ) ;
 int avio_w8 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char const*) ;

__attribute__((used)) static int mov_write_int8_metadata(AVFormatContext *s, AVIOContext *pb,
                                   const char *name, const char *tag,
                                   int len)
{
    AVDictionaryEntry *t = ((void*)0);
    uint8_t num;
    int size = 24 + len;

    if (len != 1 && len != 4)
        return -1;

    if (!(t = av_dict_get(s->metadata, tag, ((void*)0), 0)))
        return 0;
    num = atoi(t->value);

    avio_wb32(pb, size);
    ffio_wfourcc(pb, name);
    avio_wb32(pb, size - 8);
    ffio_wfourcc(pb, "data");
    avio_wb32(pb, 0x15);
    avio_wb32(pb, 0);
    if (len==4) avio_wb32(pb, num);
    else avio_w8 (pb, num);

    return size;
}
