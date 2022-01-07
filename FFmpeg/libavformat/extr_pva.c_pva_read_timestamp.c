
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct AVFormatContext {TYPE_1__* priv_data; int * pb; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ continue_pes; } ;
typedef TYPE_1__ PVAContext ;
typedef int AVIOContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ FFMIN (scalar_t__,scalar_t__) ;
 int PVA_MAX_PAYLOAD_LENGTH ;
 int SEEK_SET ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 scalar_t__ read_part_of_packet (struct AVFormatContext*,scalar_t__*,int*,int*,int ) ;

__attribute__((used)) static int64_t pva_read_timestamp(struct AVFormatContext *s, int stream_index,
                                          int64_t *pos, int64_t pos_limit) {
    AVIOContext *pb = s->pb;
    PVAContext *pvactx = s->priv_data;
    int length, streamid;
    int64_t res = AV_NOPTS_VALUE;

    pos_limit = FFMIN(*pos+PVA_MAX_PAYLOAD_LENGTH*8, (uint64_t)*pos+pos_limit);

    while (*pos < pos_limit) {
        res = AV_NOPTS_VALUE;
        avio_seek(pb, *pos, SEEK_SET);

        pvactx->continue_pes = 0;
        if (read_part_of_packet(s, &res, &length, &streamid, 0)) {
            (*pos)++;
            continue;
        }
        if (streamid - 1 != stream_index || res == AV_NOPTS_VALUE) {
            *pos = avio_tell(pb) + length;
            continue;
        }
        break;
    }

    pvactx->continue_pes = 0;
    return res;
}
