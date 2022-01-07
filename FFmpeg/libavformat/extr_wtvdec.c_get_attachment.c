
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mime ;
typedef scalar_t__ int64_t ;
typedef int description ;
struct TYPE_7__ {int flags; int stream_index; } ;
struct TYPE_6__ {int id; int disposition; TYPE_4__ attached_pic; int index; TYPE_1__* codecpar; int metadata; } ;
struct TYPE_5__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_MJPEG ;
 int AV_DISPOSITION_ATTACHED_PIC ;
 int AV_PKT_FLAG_KEY ;
 int INT_MAX ;
 int SEEK_SET ;
 int av_dict_set (int *,char*,char*,int ) ;
 int av_get_packet (int *,TYPE_4__*,unsigned int) ;
 TYPE_2__* avformat_new_stream (int *,int *) ;
 int avio_get_str16le (int *,int ,char*,int) ;
 int avio_r8 (int *) ;
 unsigned int avio_rl32 (int *) ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void get_attachment(AVFormatContext *s, AVIOContext *pb, int length)
{
    char mime[1024];
    char description[1024];
    unsigned int filesize;
    AVStream *st;
    int ret;
    int64_t pos = avio_tell(pb);

    avio_get_str16le(pb, INT_MAX, mime, sizeof(mime));
    if (strcmp(mime, "image/jpeg"))
        goto done;

    avio_r8(pb);
    avio_get_str16le(pb, INT_MAX, description, sizeof(description));
    filesize = avio_rl32(pb);
    if (!filesize)
        goto done;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        goto done;
    av_dict_set(&st->metadata, "title", description, 0);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_MJPEG;
    st->id = -1;
    ret = av_get_packet(pb, &st->attached_pic, filesize);
    if (ret < 0)
        goto done;
    st->attached_pic.stream_index = st->index;
    st->attached_pic.flags |= AV_PKT_FLAG_KEY;
    st->disposition |= AV_DISPOSITION_ATTACHED_PIC;
done:
    avio_seek(pb, pos + length, SEEK_SET);
}
