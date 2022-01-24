#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* log2_blocksize; int have_saved; int channels; float* samples; float const* saved; float* scratch; int /*<<< orphan*/  bufqueue; } ;
typedef  TYPE_1__ vorbis_enc_context ;
struct TYPE_7__ {int nb_samples; scalar_t__* extended_data; } ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (float*,float const*,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (float*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(vorbis_enc_context *venc, int sf_size)
{
    AVFrame *cur = NULL;
    int frame_size = 1 << (venc->log2_blocksize[1] - 1);
    int subframes = frame_size / sf_size;
    int sf, ch;

    /* Copy samples from last frame into current frame */
    if (venc->have_saved)
        for (ch = 0; ch < venc->channels; ch++)
            FUNC2(venc->samples + 2 * ch * frame_size,
                   venc->saved + ch * frame_size, sizeof(float) * frame_size);
    else
        for (ch = 0; ch < venc->channels; ch++)
            FUNC3(venc->samples + 2 * ch * frame_size, 0, sizeof(float) * frame_size);

    for (sf = 0; sf < subframes; sf++) {
        cur = FUNC1(&venc->bufqueue);

        for (ch = 0; ch < venc->channels; ch++) {
            float *offset = venc->samples + 2 * ch * frame_size + frame_size;
            float *save = venc->saved + ch * frame_size;
            const float *input = (float *) cur->extended_data[ch];
            const size_t len  = cur->nb_samples * sizeof(float);

            FUNC2(offset + sf*sf_size, input, len);
            FUNC2(save + sf*sf_size, input, len);   // Move samples for next frame
        }
        FUNC0(&cur);
    }
    venc->have_saved = 1;
    FUNC2(venc->scratch, venc->samples, 2 * venc->channels * frame_size);
}