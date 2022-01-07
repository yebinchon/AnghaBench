
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int metadata; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 TYPE_2__* av_dict_get (int ,char const*,int *,int ) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int ,int) ;
 int ffio_wfourcc (int *,char const*) ;
 int strlen (int ) ;

__attribute__((used)) static int mov_write_raw_metadata_tag(AVFormatContext *s, AVIOContext *pb,
                                      const char *name, const char *key)
{
    int len;
    AVDictionaryEntry *t;

    if (!(t = av_dict_get(s->metadata, key, ((void*)0), 0)))
        return 0;

    len = strlen(t->value);
    if (len > 0) {
        int size = len + 8;
        avio_wb32(pb, size);
        ffio_wfourcc(pb, name);
        avio_write(pb, t->value, len);
        return size;
    }
    return 0;
}
