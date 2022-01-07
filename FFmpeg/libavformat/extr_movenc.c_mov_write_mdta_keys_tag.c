
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int key; } ;
struct TYPE_6__ {int metadata; } ;
typedef int MOVMuxContext ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int AV_DICT_IGNORE_SUFFIX ;
 int SEEK_SET ;
 TYPE_2__* av_dict_get (int ,char*,TYPE_2__*,int ) ;
 int avio_seek (int *,int ,int ) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int ,int) ;
 int ffio_wfourcc (int *,char*) ;
 int strlen (int ) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_mdta_keys_tag(AVIOContext *pb, MOVMuxContext *mov,
                                   AVFormatContext *s)
{
    AVDictionaryEntry *t = ((void*)0);
    int64_t pos = avio_tell(pb);
    int64_t curpos, entry_pos;
    int count = 0;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "keys");
    avio_wb32(pb, 0);
    entry_pos = avio_tell(pb);
    avio_wb32(pb, 0);

    while (t = av_dict_get(s->metadata, "", t, AV_DICT_IGNORE_SUFFIX)) {
        avio_wb32(pb, strlen(t->key) + 8);
        ffio_wfourcc(pb, "mdta");
        avio_write(pb, t->key, strlen(t->key));
        count += 1;
    }
    curpos = avio_tell(pb);
    avio_seek(pb, entry_pos, SEEK_SET);
    avio_wb32(pb, count);
    avio_seek(pb, curpos, SEEK_SET);

    return update_size(pb, pos);
}
