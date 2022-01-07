
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int block_samples; int flags; int ** temp_buffer; int ** temp_buffer_size; int * best_buffer; int * best_buffer_size; } ;
typedef TYPE_1__ WavPackEncodeContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int WV_MONO_DATA ;
 int av_fast_padded_malloc (int *,int *,int) ;

__attribute__((used)) static int allocate_buffers(WavPackEncodeContext *s)
{
    int i;

    for (i = 0; i < 2; i++) {
        av_fast_padded_malloc(&s->best_buffer[0], &s->best_buffer_size[0],
                              s->block_samples * 4);
        if (!s->best_buffer[0])
            return AVERROR(ENOMEM);

        av_fast_padded_malloc(&s->temp_buffer[i][0], &s->temp_buffer_size[i][0],
                              s->block_samples * 4);
        if (!s->temp_buffer[i][0])
            return AVERROR(ENOMEM);
        if (!(s->flags & WV_MONO_DATA)) {
            av_fast_padded_malloc(&s->best_buffer[1], &s->best_buffer_size[1],
                                  s->block_samples * 4);
            if (!s->best_buffer[1])
                return AVERROR(ENOMEM);

            av_fast_padded_malloc(&s->temp_buffer[i][1], &s->temp_buffer_size[i][1],
                                  s->block_samples * 4);
            if (!s->temp_buffer[i][1])
                return AVERROR(ENOMEM);
        }
    }

    return 0;
}
