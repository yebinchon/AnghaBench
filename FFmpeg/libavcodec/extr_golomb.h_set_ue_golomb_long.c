
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int PutBitContext ;


 int UINT32_MAX ;
 int av_assert2 (int) ;
 int av_log2 (int) ;
 int * ff_ue_golomb_len ;
 int put_bits (int *,int ,int) ;
 int put_bits64 (int *,int,int) ;

__attribute__((used)) static inline void set_ue_golomb_long(PutBitContext *pb, uint32_t i)
{
    av_assert2(i <= (UINT32_MAX - 1));

    if (i < 256)
        put_bits(pb, ff_ue_golomb_len[i], i + 1);
    else {
        int e = av_log2(i + 1);
        put_bits64(pb, 2 * e + 1, i + 1);
    }
}
