
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct AVFormatContext {int pb; TYPE_1__* priv_data; } ;
struct TYPE_2__ {scalar_t__ xing_offset; scalar_t__ write_id3v1; scalar_t__ pics_to_write; } ;
typedef TYPE_1__ MP3Context ;


 int AV_LOG_WARNING ;
 int ID3v1_TAG_SIZE ;
 int av_log (struct AVFormatContext*,int ,char*) ;
 int avio_write (int ,int *,int) ;
 scalar_t__ id3v1_create_tag (struct AVFormatContext*,int *) ;
 int mp3_queue_flush (struct AVFormatContext*) ;
 int mp3_update_xing (struct AVFormatContext*) ;

__attribute__((used)) static int mp3_write_trailer(struct AVFormatContext *s)
{
    uint8_t buf[ID3v1_TAG_SIZE];
    MP3Context *mp3 = s->priv_data;

    if (mp3->pics_to_write) {
        av_log(s, AV_LOG_WARNING, "No packets were sent for some of the "
               "attached pictures.\n");
        mp3_queue_flush(s);
    }


    if (mp3->write_id3v1 && id3v1_create_tag(s, buf) > 0) {
        avio_write(s->pb, buf, ID3v1_TAG_SIZE);
    }

    if (mp3->xing_offset)
        mp3_update_xing(s);

    return 0;
}
