
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_7__ {TYPE_1__* priv_data; int * pb; } ;
struct TYPE_6__ {int resync_size; } ;
typedef TYPE_1__ MpegTSContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int FFMIN (int,int ) ;
 int SEEK_CUR ;
 int av_log (TYPE_2__*,int ,char*) ;
 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int reanalyze (TYPE_1__*) ;

__attribute__((used)) static int mpegts_resync(AVFormatContext *s, int seekback, const uint8_t *current_packet)
{
    MpegTSContext *ts = s->priv_data;
    AVIOContext *pb = s->pb;
    int c, i;
    uint64_t pos = avio_tell(pb);

    avio_seek(pb, -FFMIN(seekback, pos), SEEK_CUR);


    if (current_packet[0] == 0x80 && current_packet[12] == 0x47) {
        avio_seek(pb, 12, SEEK_CUR);
        return 0;
    }

    for (i = 0; i < ts->resync_size; i++) {
        c = avio_r8(pb);
        if (avio_feof(pb))
            return AVERROR_EOF;
        if (c == 0x47) {
            avio_seek(pb, -1, SEEK_CUR);
            reanalyze(s->priv_data);
            return 0;
        }
    }
    av_log(s, AV_LOG_ERROR,
           "max resync size reached, could not find sync byte\n");

    return AVERROR_INVALIDDATA;
}
