
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float* dimensions; int nentries; int ndimensions; float* pow2; int * lens; } ;
typedef TYPE_1__ vorbis_enc_codebook ;
typedef int PutBitContext ;


 float FLT_MAX ;
 int assert (float*) ;
 scalar_t__ put_codeword (int *,TYPE_1__*,int) ;

__attribute__((used)) static float *put_vector(vorbis_enc_codebook *book, PutBitContext *pb,
                         float *num)
{
    int i, entry = -1;
    float distance = FLT_MAX;
    assert(book->dimensions);
    for (i = 0; i < book->nentries; i++) {
        float * vec = book->dimensions + i * book->ndimensions, d = book->pow2[i];
        int j;
        if (!book->lens[i])
            continue;
        for (j = 0; j < book->ndimensions; j++)
            d -= vec[j] * num[j];
        if (distance > d) {
            entry = i;
            distance = d;
        }
    }
    if (put_codeword(pb, book, entry))
        return ((void*)0);
    return &book->dimensions[entry * book->ndimensions];
}
