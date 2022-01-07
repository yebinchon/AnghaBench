
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int metadata; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int atoi (int ) ;
 TYPE_2__* av_dict_get (int ,char const*,int *,int ) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wb16 (int *,int ) ;
 int avio_wb32 (int *,int ) ;
 int avio_write (int *,int ,scalar_t__) ;
 int ffio_wfourcc (int *,char const*) ;
 int language_code (char*) ;
 int strcmp (char const*,char*) ;
 scalar_t__ strlen (int ) ;
 int update_size (int *,int ) ;
 int utf8len (int ) ;

__attribute__((used)) static int mov_write_3gp_udta_tag(AVIOContext *pb, AVFormatContext *s,
                                  const char *tag, const char *str)
{
    int64_t pos = avio_tell(pb);
    AVDictionaryEntry *t = av_dict_get(s->metadata, str, ((void*)0), 0);
    if (!t || !utf8len(t->value))
        return 0;
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, tag);
    avio_wb32(pb, 0);
    if (!strcmp(tag, "yrrc"))
        avio_wb16(pb, atoi(t->value));
    else {
        avio_wb16(pb, language_code("eng"));
        avio_write(pb, t->value, strlen(t->value) + 1);
        if (!strcmp(tag, "albm") &&
            (t = av_dict_get(s->metadata, "track", ((void*)0), 0)))
            avio_w8(pb, atoi(t->value));
    }
    return update_size(pb, pos);
}
