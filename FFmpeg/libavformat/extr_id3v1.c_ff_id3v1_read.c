
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_9__ {int seekable; } ;
struct TYPE_8__ {TYPE_4__* pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int ID3v1_TAG_SIZE ;
 int SEEK_SET ;
 int avio_read (TYPE_4__*,int *,int) ;
 int avio_seek (TYPE_4__*,int,int ) ;
 int avio_size (TYPE_4__*) ;
 int avio_tell (TYPE_4__*) ;
 int parse_tag (TYPE_1__*,int *) ;

void ff_id3v1_read(AVFormatContext *s)
{
    int ret;
    uint8_t buf[ID3v1_TAG_SIZE];
    int64_t filesize, position = avio_tell(s->pb);

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {

        filesize = avio_size(s->pb);
        if (filesize > 128) {
            avio_seek(s->pb, filesize - 128, SEEK_SET);
            ret = avio_read(s->pb, buf, ID3v1_TAG_SIZE);
            if (ret == ID3v1_TAG_SIZE) {
                parse_tag(s, buf);
            }
            avio_seek(s->pb, position, SEEK_SET);
        }
    }
}
