
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nentries; int lookup; int* pow2; float* dimensions; int ndimensions; float min; int* quantlist; int delta; scalar_t__ seq_p; int codewords; int lens; } ;
typedef TYPE_1__ vorbis_enc_codebook ;


 int AVERROR (int ) ;
 int ENOMEM ;
 float* av_malloc_array (int,int) ;
 int* av_mallocz_array (int,int) ;
 int cb_lookup_vals (int,int,int) ;
 int ff_vorbis_len2vlc (int ,int ,int) ;

__attribute__((used)) static int ready_codebook(vorbis_enc_codebook *cb)
{
    int i;

    ff_vorbis_len2vlc(cb->lens, cb->codewords, cb->nentries);

    if (!cb->lookup) {
        cb->pow2 = cb->dimensions = ((void*)0);
    } else {
        int vals = cb_lookup_vals(cb->lookup, cb->ndimensions, cb->nentries);
        cb->dimensions = av_malloc_array(cb->nentries, sizeof(float) * cb->ndimensions);
        cb->pow2 = av_mallocz_array(cb->nentries, sizeof(float));
        if (!cb->dimensions || !cb->pow2)
            return AVERROR(ENOMEM);
        for (i = 0; i < cb->nentries; i++) {
            float last = 0;
            int j;
            int div = 1;
            for (j = 0; j < cb->ndimensions; j++) {
                int off;
                if (cb->lookup == 1)
                    off = (i / div) % vals;
                else
                    off = i * cb->ndimensions + j;

                cb->dimensions[i * cb->ndimensions + j] = last + cb->min + cb->quantlist[off] * cb->delta;
                if (cb->seq_p)
                    last = cb->dimensions[i * cb->ndimensions + j];
                cb->pow2[i] += cb->dimensions[i * cb->ndimensions + j] * cb->dimensions[i * cb->ndimensions + j];
                div *= vals;
            }
            cb->pow2[i] /= 2.0;
        }
    }
    return 0;
}
