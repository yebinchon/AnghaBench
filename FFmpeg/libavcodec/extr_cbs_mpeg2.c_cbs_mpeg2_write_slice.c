
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* content; } ;
struct TYPE_4__ {int* data; int data_size; int data_bit_start; int header; } ;
typedef int PutBitContext ;
typedef TYPE_1__ MPEG2RawSlice ;
typedef TYPE_2__ CodedBitstreamUnit ;
typedef int CodedBitstreamContext ;


 int AVERROR (int ) ;
 int AV_RB32 (int*) ;
 int ENOSPC ;
 int MAX_UINT_BITS (int) ;
 int av_assert0 (int) ;
 int cbs_mpeg2_write_slice_header (int *,int *,int *) ;
 int flush_put_bits (int *) ;
 int memcpy (int ,int*,size_t) ;
 int put_bits (int *,int,int) ;
 int put_bits32 (int *,int ) ;
 int put_bits_count (int *) ;
 int put_bits_left (int *) ;
 int put_bits_ptr (int *) ;
 int skip_put_bytes (int *,size_t) ;

__attribute__((used)) static int cbs_mpeg2_write_slice(CodedBitstreamContext *ctx,
                                 CodedBitstreamUnit *unit,
                                 PutBitContext *pbc)
{
    MPEG2RawSlice *slice = unit->content;
    int err;

    err = cbs_mpeg2_write_slice_header(ctx, pbc, &slice->header);
    if (err < 0)
        return err;

    if (slice->data) {
        size_t rest = slice->data_size - (slice->data_bit_start + 7) / 8;
        uint8_t *pos = slice->data + slice->data_bit_start / 8;

        av_assert0(slice->data_bit_start >= 0 &&
                   8 * slice->data_size > slice->data_bit_start);

        if (slice->data_size * 8 + 8 > put_bits_left(pbc))
            return AVERROR(ENOSPC);


        if (slice->data_bit_start % 8)
            put_bits(pbc, 8 - slice->data_bit_start % 8,
                     *pos++ & MAX_UINT_BITS(8 - slice->data_bit_start % 8));

        if (put_bits_count(pbc) % 8 == 0) {



            flush_put_bits(pbc);
            memcpy(put_bits_ptr(pbc), pos, rest);
            skip_put_bytes(pbc, rest);
        } else {

            for (; rest > 3; rest -= 4, pos += 4)
                put_bits32(pbc, AV_RB32(pos));

            for (; rest; rest--, pos++)
                put_bits(pbc, 8, *pos);


            put_bits(pbc, 8 - put_bits_count(pbc) % 8, 0);
        }
    }

    return 0;
}
