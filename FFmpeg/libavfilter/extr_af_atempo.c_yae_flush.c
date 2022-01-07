
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int64_t ;
struct TYPE_13__ {scalar_t__* position; int window; scalar_t__ stride; int real_to_complex; scalar_t__ nfrag; int state; } ;
struct TYPE_12__ {scalar_t__* position; scalar_t__ nsamples; int * data; int xdat; } ;
typedef TYPE_1__ AudioFragment ;
typedef TYPE_2__ ATempoContext ;


 int AVERROR (int ) ;
 int EAGAIN ;
 scalar_t__ FFMAX (scalar_t__,scalar_t__) ;
 int FFMIN (int,int) ;
 int YAE_FLUSH_OUTPUT ;
 int av_assert0 (int) ;
 int av_rdft_calc (int ,int ) ;
 int memcpy (int *,int const*,int) ;
 scalar_t__ yae_adjust_position (TYPE_2__*) ;
 int yae_advance_to_next_frag (TYPE_2__*) ;
 TYPE_1__* yae_curr_frag (TYPE_2__*) ;
 int yae_downmix (TYPE_2__*,TYPE_1__*) ;
 int yae_load_frag (TYPE_2__*,int *,int *) ;
 scalar_t__ yae_overlap_add (TYPE_2__*,int **,int *) ;

__attribute__((used)) static int yae_flush(ATempoContext *atempo,
                     uint8_t **dst_ref,
                     uint8_t *dst_end)
{
    AudioFragment *frag = yae_curr_frag(atempo);
    int64_t overlap_end;
    int64_t start_here;
    int64_t stop_here;
    int64_t offset;

    const uint8_t *src;
    uint8_t *dst;

    int src_size;
    int dst_size;
    int nbytes;

    atempo->state = YAE_FLUSH_OUTPUT;

    if (!atempo->nfrag) {

        return 0;
    }

    if (atempo->position[0] == frag->position[0] + frag->nsamples &&
        atempo->position[1] == frag->position[1] + frag->nsamples) {

        return 0;
    }

    if (frag->position[0] + frag->nsamples < atempo->position[0]) {

        yae_load_frag(atempo, ((void*)0), ((void*)0));

        if (atempo->nfrag) {

            yae_downmix(atempo, frag);


            av_rdft_calc(atempo->real_to_complex, frag->xdat);


            if (yae_adjust_position(atempo)) {

                yae_load_frag(atempo, ((void*)0), ((void*)0));
            }
        }
    }


    overlap_end = frag->position[1] + FFMIN(atempo->window / 2,
                                            frag->nsamples);

    while (atempo->position[1] < overlap_end) {
        if (yae_overlap_add(atempo, dst_ref, dst_end) != 0) {
            return AVERROR(EAGAIN);
        }
    }


    if (frag->position[0] + frag->nsamples < atempo->position[0]) {
        yae_advance_to_next_frag(atempo);
        return AVERROR(EAGAIN);
    }


    start_here = FFMAX(atempo->position[1], overlap_end);
    stop_here = frag->position[1] + frag->nsamples;
    offset = start_here - frag->position[1];
    av_assert0(start_here <= stop_here && frag->position[1] <= start_here);

    src = frag->data + offset * atempo->stride;
    dst = (uint8_t *)*dst_ref;

    src_size = (int)(stop_here - start_here) * atempo->stride;
    dst_size = dst_end - dst;
    nbytes = FFMIN(src_size, dst_size);

    memcpy(dst, src, nbytes);
    dst += nbytes;

    atempo->position[1] += (nbytes / atempo->stride);


    *dst_ref = (uint8_t *)dst;

    return atempo->position[1] == stop_here ? 0 : AVERROR(EAGAIN);
}
