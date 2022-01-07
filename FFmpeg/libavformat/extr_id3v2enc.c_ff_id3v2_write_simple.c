
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct AVFormatContext {int metadata_header_padding; int pb; } ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ ID3v2EncContext ;


 int ff_id3v2_finish (TYPE_1__*,int ,int ) ;
 int ff_id3v2_start (TYPE_1__*,int ,int,char const*) ;
 int ff_id3v2_write_metadata (struct AVFormatContext*,TYPE_1__*) ;

int ff_id3v2_write_simple(struct AVFormatContext *s, int id3v2_version,
                          const char *magic)
{
    ID3v2EncContext id3 = { 0 };
    int ret;

    ff_id3v2_start(&id3, s->pb, id3v2_version, magic);
    if ((ret = ff_id3v2_write_metadata(s, &id3)) < 0)
        return ret;
    ff_id3v2_finish(&id3, s->pb, s->metadata_header_padding);

    return 0;
}
