
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int pb; } ;
typedef int ID3v2ExtraMeta ;
typedef TYPE_1__ AVFormatContext ;


 int ID3v2_DEFAULT_MAGIC ;
 int SEEK_SET ;
 scalar_t__ avio_seek (int ,int ,int ) ;
 int ff_id3v2_free_extra_meta (int **) ;
 int ff_id3v2_parse_apic (TYPE_1__*,int **) ;
 int ff_id3v2_parse_chapters (TYPE_1__*,int **) ;
 int ff_id3v2_read (TYPE_1__*,int ,int **,int ) ;

__attribute__((used)) static void read_id3(AVFormatContext *s, uint64_t id3pos)
{
    ID3v2ExtraMeta *id3v2_extra_meta = ((void*)0);
    if (avio_seek(s->pb, id3pos, SEEK_SET) < 0)
        return;

    ff_id3v2_read(s, ID3v2_DEFAULT_MAGIC, &id3v2_extra_meta, 0);
    if (id3v2_extra_meta) {
        ff_id3v2_parse_apic(s, &id3v2_extra_meta);
        ff_id3v2_parse_chapters(s, &id3v2_extra_meta);
    }
    ff_id3v2_free_extra_meta(&id3v2_extra_meta);
}
