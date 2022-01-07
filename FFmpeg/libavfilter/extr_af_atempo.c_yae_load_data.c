
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__* position; int const ring; double tempo; int stride; int tail; int size; int head; int * buffer; } ;
typedef TYPE_1__ ATempoContext ;


 int AVERROR (int ) ;
 int EAGAIN ;
 void* FFMIN (int const,int) ;
 int av_assert0 (int) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int yae_load_data(ATempoContext *atempo,
                         const uint8_t **src_ref,
                         const uint8_t *src_end,
                         int64_t stop_here)
{

    const uint8_t *src = *src_ref;
    const int read_size = stop_here - atempo->position[0];

    if (stop_here <= atempo->position[0]) {
        return 0;
    }


    av_assert0(read_size <= atempo->ring || atempo->tempo > 2.0);

    while (atempo->position[0] < stop_here && src < src_end) {
        int src_samples = (src_end - src) / atempo->stride;


        int nsamples = FFMIN(read_size, src_samples);
        int na;
        int nb;

        nsamples = FFMIN(nsamples, atempo->ring);
        na = FFMIN(nsamples, atempo->ring - atempo->tail);
        nb = FFMIN(nsamples - na, atempo->ring);

        if (na) {
            uint8_t *a = atempo->buffer + atempo->tail * atempo->stride;
            memcpy(a, src, na * atempo->stride);

            src += na * atempo->stride;
            atempo->position[0] += na;

            atempo->size = FFMIN(atempo->size + na, atempo->ring);
            atempo->tail = (atempo->tail + na) % atempo->ring;
            atempo->head =
                atempo->size < atempo->ring ?
                atempo->tail - atempo->size :
                atempo->tail;
        }

        if (nb) {
            uint8_t *b = atempo->buffer;
            memcpy(b, src, nb * atempo->stride);

            src += nb * atempo->stride;
            atempo->position[0] += nb;

            atempo->size = FFMIN(atempo->size + nb, atempo->ring);
            atempo->tail = (atempo->tail + nb) % atempo->ring;
            atempo->head =
                atempo->size < atempo->ring ?
                atempo->tail - atempo->size :
                atempo->tail;
        }
    }


    *src_ref = src;


    av_assert0(atempo->position[0] <= stop_here);

    return atempo->position[0] == stop_here ? 0 : AVERROR(EAGAIN);
}
