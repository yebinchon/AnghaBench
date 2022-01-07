
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


 int atoi (int ) ;
 TYPE_2__* av_dict_get (int ,char*,int *,int ) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_tmpo_tag(AVIOContext *pb, AVFormatContext *s)
{
    AVDictionaryEntry *t = av_dict_get(s->metadata, "tmpo", ((void*)0), 0);
    int size = 0, tmpo = t ? atoi(t->value) : 0;
    if (tmpo) {
        size = 26;
        avio_wb32(pb, size);
        ffio_wfourcc(pb, "tmpo");
        avio_wb32(pb, size-8);
        ffio_wfourcc(pb, "data");
        avio_wb32(pb, 0x15);
        avio_wb32(pb, 0);
        avio_wb16(pb, tmpo);
    }
    return size;
}
