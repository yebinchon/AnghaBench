
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {TYPE_1__* pb; TYPE_2__* priv_data; } ;
struct TYPE_6__ {int pts; } ;
struct TYPE_5__ {int seekable; } ;
typedef TYPE_2__ CineDemuxContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_SEEKABLE_NORMAL ;
 int AVSEEK_FLAG_BYTE ;
 int AVSEEK_FLAG_FRAME ;
 int EIO ;
 int ENOSYS ;

__attribute__((used)) static int cine_read_seek(AVFormatContext *avctx, int stream_index, int64_t timestamp, int flags)
{
    CineDemuxContext *cine = avctx->priv_data;

    if ((flags & AVSEEK_FLAG_FRAME) || (flags & AVSEEK_FLAG_BYTE))
        return AVERROR(ENOSYS);

    if (!(avctx->pb->seekable & AVIO_SEEKABLE_NORMAL))
        return AVERROR(EIO);

    cine->pts = timestamp;
    return 0;
}
