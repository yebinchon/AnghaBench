
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct AVFormatContext {int metadata_header_padding; int pb; TYPE_1__* priv_data; } ;
struct TYPE_2__ {int id3; scalar_t__ id3v2_version; int pics_to_write; } ;
typedef TYPE_1__ MP3Context ;


 int ID3v2_DEFAULT_MAGIC ;
 int ff_id3v2_finish (int *,int ,int ) ;
 int ff_id3v2_start (int *,int ,scalar_t__,int ) ;
 int ff_id3v2_write_metadata (struct AVFormatContext*,int *) ;
 int mp3_write_xing (struct AVFormatContext*) ;

__attribute__((used)) static int mp3_write_header(struct AVFormatContext *s)
{
    MP3Context *mp3 = s->priv_data;
    int ret;

    if (mp3->id3v2_version) {
        ff_id3v2_start(&mp3->id3, s->pb, mp3->id3v2_version, ID3v2_DEFAULT_MAGIC);
        ret = ff_id3v2_write_metadata(s, &mp3->id3);
        if (ret < 0)
            return ret;
    }

    if (!mp3->pics_to_write) {
        if (mp3->id3v2_version)
            ff_id3v2_finish(&mp3->id3, s->pb, s->metadata_header_padding);
        mp3_write_xing(s);
    }

    return 0;
}
