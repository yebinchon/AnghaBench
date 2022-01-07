
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int int64_t ;
typedef int header ;
struct TYPE_3__ {int profile; int level; int tier; int bitdepth; int monochrome; int chroma_subsampling_x; int chroma_subsampling_y; int chroma_sample_position; } ;
typedef int PutBitContext ;
typedef int AVIOContext ;
typedef TYPE_1__ AV1SequenceParameters ;




 int AVERROR_INVALIDDATA ;
 int av_free (int const*) ;
 int avio_close_dyn_buf (int *,int const**) ;
 int avio_open_dyn_buf (int **) ;
 int avio_write (int *,int const*,int) ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int const*,int) ;
 int parse_obu_header (int const*,int,int *,int*,int*,int*,int*) ;
 int parse_sequence_header (TYPE_1__*,int const*,int ) ;
 int put_bits (int *,int,int) ;

int ff_isom_write_av1c(AVIOContext *pb, const uint8_t *buf, int size)
{
    AVIOContext *seq_pb = ((void*)0), *meta_pb = ((void*)0);
    AV1SequenceParameters seq_params;
    PutBitContext pbc;
    uint8_t header[4];
    uint8_t *seq = ((void*)0), *meta = ((void*)0);
    int64_t obu_size;
    int start_pos, type, temporal_id, spatial_id;
    int ret, nb_seq = 0, seq_size, meta_size;

    if (size <= 0)
        return AVERROR_INVALIDDATA;

    ret = avio_open_dyn_buf(&seq_pb);
    if (ret < 0)
        return ret;
    ret = avio_open_dyn_buf(&meta_pb);
    if (ret < 0)
        goto fail;

    while (size > 0) {
        int len = parse_obu_header(buf, size, &obu_size, &start_pos,
                                   &type, &temporal_id, &spatial_id);
        if (len < 0) {
            ret = len;
            goto fail;
        }

        switch (type) {
        case 128:
            nb_seq++;
            if (!obu_size || nb_seq > 1) {
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            ret = parse_sequence_header(&seq_params, buf + start_pos, obu_size);
            if (ret < 0)
                goto fail;

            avio_write(seq_pb, buf, len);
            break;
        case 129:
            if (!obu_size) {
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            avio_write(meta_pb, buf, len);
            break;
        default:
            break;
        }
        size -= len;
        buf += len;
    }

    seq_size = avio_close_dyn_buf(seq_pb, &seq);
    if (!seq_size) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    init_put_bits(&pbc, header, sizeof(header));

    put_bits(&pbc, 1, 1);
    put_bits(&pbc, 7, 1);
    put_bits(&pbc, 3, seq_params.profile);
    put_bits(&pbc, 5, seq_params.level);
    put_bits(&pbc, 1, seq_params.tier);
    put_bits(&pbc, 1, seq_params.bitdepth > 8);
    put_bits(&pbc, 1, seq_params.bitdepth == 12);
    put_bits(&pbc, 1, seq_params.monochrome);
    put_bits(&pbc, 1, seq_params.chroma_subsampling_x);
    put_bits(&pbc, 1, seq_params.chroma_subsampling_y);
    put_bits(&pbc, 2, seq_params.chroma_sample_position);
    put_bits(&pbc, 8, 0);
    flush_put_bits(&pbc);

    avio_write(pb, header, sizeof(header));
    avio_write(pb, seq, seq_size);

    meta_size = avio_close_dyn_buf(meta_pb, &meta);
    if (meta_size)
        avio_write(pb, meta, meta_size);

fail:
    if (!seq)
        avio_close_dyn_buf(seq_pb, &seq);
    if (!meta)
        avio_close_dyn_buf(meta_pb, &meta);
    av_free(seq);
    av_free(meta);

    return ret;
}
