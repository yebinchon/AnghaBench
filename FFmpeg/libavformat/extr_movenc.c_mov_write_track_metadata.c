
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int metadata; } ;
typedef TYPE_1__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 TYPE_2__* av_dict_get (int ,char const*,int *,int ) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int avio_write (int *,int ,int ) ;
 int ffio_wfourcc (int *,char const*) ;
 int strlen (int ) ;
 int update_size (int *,int ) ;
 int utf8len (int ) ;

__attribute__((used)) static int mov_write_track_metadata(AVIOContext *pb, AVStream *st,
                                    const char *tag, const char *str)
{
    int64_t pos = avio_tell(pb);
    AVDictionaryEntry *t = av_dict_get(st->metadata, str, ((void*)0), 0);
    if (!t || !utf8len(t->value))
        return 0;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, tag);
    avio_write(pb, t->value, strlen(t->value));
    return update_size(pb, pos);
}
