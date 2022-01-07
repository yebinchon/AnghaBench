
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nentries; int* lens; int * codewords; } ;
typedef TYPE_1__ vorbis_enc_codebook ;
struct TYPE_8__ {int size_in_bits; } ;
typedef TYPE_2__ PutBitContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_assert2 (int) ;
 int put_bits (TYPE_2__*,int,int ) ;
 int put_bits_count (TYPE_2__*) ;

__attribute__((used)) static inline int put_codeword(PutBitContext *pb, vorbis_enc_codebook *cb,
                               int entry)
{
    av_assert2(entry >= 0);
    av_assert2(entry < cb->nentries);
    av_assert2(cb->lens[entry]);
    if (pb->size_in_bits - put_bits_count(pb) < cb->lens[entry])
        return AVERROR(EINVAL);
    put_bits(pb, cb->lens[entry], cb->codewords[entry]);
    return 0;
}
