
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int AV1SequenceParameters ;



 int AVERROR_INVALIDDATA ;
 int parse_obu_header (int const*,int,int *,int*,int*,int*,int*) ;
 int parse_sequence_header (int *,int const*,int ) ;

int ff_av1_parse_seq_header(AV1SequenceParameters *seq, const uint8_t *buf, int size)
{
    int64_t obu_size;
    int start_pos, type, temporal_id, spatial_id;

    if (size <= 0)
        return AVERROR_INVALIDDATA;

    while (size > 0) {
        int len = parse_obu_header(buf, size, &obu_size, &start_pos,
                                   &type, &temporal_id, &spatial_id);
        if (len < 0)
            return len;

        switch (type) {
        case 128:
            if (!obu_size)
                return AVERROR_INVALIDDATA;

            return parse_sequence_header(seq, buf + start_pos, obu_size);
        default:
            break;
        }
        size -= len;
        buf += len;
    }

    return AVERROR_INVALIDDATA;
}
