
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int metadata; } ;
typedef int MOVMuxContext ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_2__* av_dict_get (int ,char*,TYPE_2__*,int ) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_write_string_data_tag (int *,int ,int ,int) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_mdta_ilst_tag(AVIOContext *pb, MOVMuxContext *mov,
                                   AVFormatContext *s)
{
    AVDictionaryEntry *t = ((void*)0);
    int64_t pos = avio_tell(pb);
    int count = 1;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "ilst");

    while (t = av_dict_get(s->metadata, "", t, AV_DICT_IGNORE_SUFFIX)) {
        int64_t entry_pos = avio_tell(pb);
        avio_wb32(pb, 0);
        avio_wb32(pb, count);
        mov_write_string_data_tag(pb, t->value, 0, 1);
        update_size(pb, entry_pos);
        count += 1;
    }
    return update_size(pb, pos);
}
