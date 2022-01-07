
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_16__ {scalar_t__ codec_id; } ;
struct TYPE_15__ {TYPE_3__* pb; TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_14__ {int seekable; } ;
struct TYPE_13__ {long long header_size; } ;
struct TYPE_12__ {TYPE_5__* codecpar; } ;
typedef TYPE_2__ SoXContext ;
typedef TYPE_3__ AVIOContext ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVCodecParameters ;


 int AVIO_SEEKABLE_NORMAL ;
 scalar_t__ AV_CODEC_ID_PCM_S32LE ;
 int SEEK_SET ;
 int avio_flush (TYPE_3__*) ;
 int avio_seek (TYPE_3__*,int,int ) ;
 int avio_tell (TYPE_3__*) ;
 int avio_wb64 (TYPE_3__*,int) ;
 int avio_wl64 (TYPE_3__*,int) ;

__attribute__((used)) static int sox_write_trailer(AVFormatContext *s)
{
    SoXContext *sox = s->priv_data;
    AVIOContext *pb = s->pb;
    AVCodecParameters *par = s->streams[0]->codecpar;

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {

        int64_t file_size = avio_tell(pb);
        int64_t num_samples = (file_size - sox->header_size - 4LL) >> 2LL;
        avio_seek(pb, 8, SEEK_SET);
        if (par->codec_id == AV_CODEC_ID_PCM_S32LE) {
            avio_wl64(pb, num_samples);
        } else
            avio_wb64(pb, num_samples);
        avio_seek(pb, file_size, SEEK_SET);

        avio_flush(pb);
    }

    return 0;
}
