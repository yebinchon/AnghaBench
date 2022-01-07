
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {scalar_t__ eof_reached; } ;
struct TYPE_7__ {scalar_t__ probesize; TYPE_2__* pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int SEEK_CUR ;
 int avio_feof (TYPE_2__*) ;
 int avio_r8 (TYPE_2__*) ;
 int avio_seek (TYPE_2__*,int,int ) ;
 scalar_t__ avio_tell (TYPE_2__*) ;

__attribute__((used)) static int adts_aac_resync(AVFormatContext *s)
{
    uint16_t state;


    state = avio_r8(s->pb);
    while (!avio_feof(s->pb) && avio_tell(s->pb) < s->probesize) {
        state = (state << 8) | avio_r8(s->pb);
        if ((state >> 4) != 0xFFF)
            continue;
        avio_seek(s->pb, -2, SEEK_CUR);
        break;
    }
    if (s->pb->eof_reached)
        return AVERROR_EOF;
    if ((state >> 4) != 0xFFF)
        return AVERROR_INVALIDDATA;

    return 0;
}
