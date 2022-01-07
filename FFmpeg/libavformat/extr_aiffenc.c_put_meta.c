
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int metadata; int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int FFALIGN (int,int) ;
 TYPE_2__* av_dict_get (int ,char const*,int *,int ) ;
 int avio_w8 (int *,int ) ;
 int avio_wb32 (int *,int ) ;
 int avio_wl32 (int *,int ) ;
 int avio_write (int *,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static void put_meta(AVFormatContext *s, const char *key, uint32_t id)
{
    AVDictionaryEntry *tag;
    AVIOContext *pb = s->pb;

    if (tag = av_dict_get(s->metadata, key, ((void*)0), 0)) {
        int size = strlen(tag->value);

        avio_wl32(pb, id);
        avio_wb32(pb, FFALIGN(size, 2));
        avio_write(pb, tag->value, size);
        if (size & 1)
            avio_w8(pb, 0);
    }
}
