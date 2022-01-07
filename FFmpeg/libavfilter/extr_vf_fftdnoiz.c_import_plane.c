
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {scalar_t__ im; int re; } ;
struct TYPE_10__ {int depth; int (* import_row ) (TYPE_3__*,int *,int const) ;TYPE_1__* planes; } ;
struct TYPE_9__ {int planewidth; int planeheight; int b; int o; int nox; int noy; int data_linesize; int fft; TYPE_3__* vdata; TYPE_3__* hdata; } ;
typedef TYPE_1__ PlaneContext ;
typedef TYPE_2__ FFTdnoizContext ;
typedef TYPE_3__ FFTComplex ;


 int FFMIN (int const,int const) ;
 int av_fft_calc (int ,TYPE_3__*) ;
 int av_fft_permute (int ,TYPE_3__*) ;
 int memcpy (float*,TYPE_3__*,int const) ;
 int stub1 (TYPE_3__*,int *,int const) ;

__attribute__((used)) static void import_plane(FFTdnoizContext *s,
                         uint8_t *srcp, int src_linesize,
                         float *buffer, int buffer_linesize, int plane)
{
    PlaneContext *p = &s->planes[plane];
    const int width = p->planewidth;
    const int height = p->planeheight;
    const int block = p->b;
    const int overlap = p->o;
    const int size = block - overlap;
    const int nox = p->nox;
    const int noy = p->noy;
    const int bpp = (s->depth + 7) / 8;
    const int data_linesize = p->data_linesize / sizeof(FFTComplex);
    FFTComplex *hdata = p->hdata;
    FFTComplex *vdata = p->vdata;
    int x, y, i, j;

    buffer_linesize /= sizeof(float);
    for (y = 0; y < noy; y++) {
        for (x = 0; x < nox; x++) {
            const int rh = FFMIN(block, height - y * size);
            const int rw = FFMIN(block, width - x * size);
            uint8_t *src = srcp + src_linesize * y * size + x * size * bpp;
            float *bdst = buffer + buffer_linesize * y * block + x * block * 2;
            FFTComplex *ssrc, *dst = hdata;

            for (i = 0; i < rh; i++) {
                s->import_row(dst, src, rw);
                for (j = rw; j < block; j++) {
                    dst[j].re = dst[block - j - 1].re;
                    dst[j].im = 0;
                }
                av_fft_permute(p->fft, dst);
                av_fft_calc(p->fft, dst);

                src += src_linesize;
                dst += data_linesize;
            }

            dst = hdata;
            for (; i < block; i++) {
                for (j = 0; j < block; j++) {
                    dst[j].re = dst[(block - i - 1) * data_linesize + j].re;
                    dst[j].im = dst[(block - i - 1) * data_linesize + j].im;
                }
            }

            ssrc = hdata;
            dst = vdata;
            for (i = 0; i < block; i++) {
                for (j = 0; j < block; j++)
                    dst[j] = ssrc[j * data_linesize + i];
                av_fft_permute(p->fft, dst);
                av_fft_calc(p->fft, dst);
                memcpy(bdst, dst, block * sizeof(FFTComplex));

                dst += data_linesize;
                bdst += buffer_linesize;
            }
        }
    }
}
