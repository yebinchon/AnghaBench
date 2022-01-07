
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int submaps; int coupling_steps; int* magnitude; int* angle; int* mux; int* floor; int* residue; } ;
typedef TYPE_2__ vorbis_enc_mapping ;
struct TYPE_7__ {int channels; int* log2_blocksize; int ncodebooks; int nfloors; int nresidues; int nmappings; int nmodes; TYPE_1__* modes; TYPE_2__* mappings; int * residues; int * floors; int * codebooks; int sample_rate; } ;
typedef TYPE_3__ vorbis_enc_context ;
typedef int uint8_t ;
struct TYPE_5__ {int blockflag; int mapping; } ;
typedef int PutBitContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_freep (int **) ;
 int * av_mallocz (int) ;
 int av_xiphlacing (int *,int) ;
 int flush_put_bits (int *) ;
 int ilog (int) ;
 int init_put_bits (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int put_bits (int *,int,int) ;
 int put_bits32 (int *,int ) ;
 int put_bits_count (int *) ;
 int put_codebook_header (int *,int *) ;
 int put_floor_header (int *,int *) ;
 int put_residue_header (int *,int *) ;

__attribute__((used)) static int put_main_header(vorbis_enc_context *venc, uint8_t **out)
{
    int i;
    PutBitContext pb;
    int len, hlens[3];
    int buffer_len = 50000;
    uint8_t *buffer = av_mallocz(buffer_len), *p = buffer;
    if (!buffer)
        return AVERROR(ENOMEM);


    init_put_bits(&pb, p, buffer_len);
    put_bits(&pb, 8, 1);
    for (i = 0; "vorbis"[i]; i++)
        put_bits(&pb, 8, "vorbis"[i]);
    put_bits32(&pb, 0);
    put_bits(&pb, 8, venc->channels);
    put_bits32(&pb, venc->sample_rate);
    put_bits32(&pb, 0);
    put_bits32(&pb, 0);
    put_bits32(&pb, 0);
    put_bits(&pb, 4, venc->log2_blocksize[0]);
    put_bits(&pb, 4, venc->log2_blocksize[1]);
    put_bits(&pb, 1, 1);

    flush_put_bits(&pb);
    hlens[0] = put_bits_count(&pb) >> 3;
    buffer_len -= hlens[0];
    p += hlens[0];


    init_put_bits(&pb, p, buffer_len);
    put_bits(&pb, 8, 3);
    for (i = 0; "vorbis"[i]; i++)
        put_bits(&pb, 8, "vorbis"[i]);
    put_bits32(&pb, 0);
    put_bits32(&pb, 0);
    put_bits(&pb, 1, 1);

    flush_put_bits(&pb);
    hlens[1] = put_bits_count(&pb) >> 3;
    buffer_len -= hlens[1];
    p += hlens[1];


    init_put_bits(&pb, p, buffer_len);
    put_bits(&pb, 8, 5);
    for (i = 0; "vorbis"[i]; i++)
        put_bits(&pb, 8, "vorbis"[i]);


    put_bits(&pb, 8, venc->ncodebooks - 1);
    for (i = 0; i < venc->ncodebooks; i++)
        put_codebook_header(&pb, &venc->codebooks[i]);


    put_bits(&pb, 6, 0);
    put_bits(&pb, 16, 0);


    put_bits(&pb, 6, venc->nfloors - 1);
    for (i = 0; i < venc->nfloors; i++)
        put_floor_header(&pb, &venc->floors[i]);


    put_bits(&pb, 6, venc->nresidues - 1);
    for (i = 0; i < venc->nresidues; i++)
        put_residue_header(&pb, &venc->residues[i]);


    put_bits(&pb, 6, venc->nmappings - 1);
    for (i = 0; i < venc->nmappings; i++) {
        vorbis_enc_mapping *mc = &venc->mappings[i];
        int j;
        put_bits(&pb, 16, 0);

        put_bits(&pb, 1, mc->submaps > 1);
        if (mc->submaps > 1)
            put_bits(&pb, 4, mc->submaps - 1);

        put_bits(&pb, 1, !!mc->coupling_steps);
        if (mc->coupling_steps) {
            put_bits(&pb, 8, mc->coupling_steps - 1);
            for (j = 0; j < mc->coupling_steps; j++) {
                put_bits(&pb, ilog(venc->channels - 1), mc->magnitude[j]);
                put_bits(&pb, ilog(venc->channels - 1), mc->angle[j]);
            }
        }

        put_bits(&pb, 2, 0);

        if (mc->submaps > 1)
            for (j = 0; j < venc->channels; j++)
                put_bits(&pb, 4, mc->mux[j]);

        for (j = 0; j < mc->submaps; j++) {
            put_bits(&pb, 8, 0);
            put_bits(&pb, 8, mc->floor[j]);
            put_bits(&pb, 8, mc->residue[j]);
        }
    }


    put_bits(&pb, 6, venc->nmodes - 1);
    for (i = 0; i < venc->nmodes; i++) {
        put_bits(&pb, 1, venc->modes[i].blockflag);
        put_bits(&pb, 16, 0);
        put_bits(&pb, 16, 0);
        put_bits(&pb, 8, venc->modes[i].mapping);
    }

    put_bits(&pb, 1, 1);

    flush_put_bits(&pb);
    hlens[2] = put_bits_count(&pb) >> 3;

    len = hlens[0] + hlens[1] + hlens[2];
    p = *out = av_mallocz(64 + len + len/255);
    if (!p)
        return AVERROR(ENOMEM);

    *p++ = 2;
    p += av_xiphlacing(p, hlens[0]);
    p += av_xiphlacing(p, hlens[1]);
    buffer_len = 0;
    for (i = 0; i < 3; i++) {
        memcpy(p, buffer + buffer_len, hlens[i]);
        p += hlens[i];
        buffer_len += hlens[i];
    }

    av_freep(&buffer);
    return p - *out;
}
