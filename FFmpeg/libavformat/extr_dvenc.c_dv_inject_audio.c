
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int difseg_size; int** audio_shuffle; int audio_stride; } ;
struct TYPE_9__ {int * audio_data; TYPE_6__* sys; TYPE_2__** ast; int frames; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {int sample_rate; } ;
typedef TYPE_3__ DVMuxContext ;


 int * av_fifo_peek2 (int ,int) ;
 int ** dv_aaux_packs_dist ;
 int dv_audio_frame_size (TYPE_6__*,int ,int ) ;
 int dv_write_pack (int ,TYPE_3__*,int *,int,int) ;

__attribute__((used)) static void dv_inject_audio(DVMuxContext *c, int channel, uint8_t* frame_ptr)
{
    int i, j, d, of, size;
    size = 4 * dv_audio_frame_size(c->sys, c->frames, c->ast[channel]->codecpar->sample_rate);
    frame_ptr += channel * c->sys->difseg_size * 150 * 80;
    for (i = 0; i < c->sys->difseg_size; i++) {
        frame_ptr += 6 * 80;
        for (j = 0; j < 9; j++) {
            dv_write_pack(dv_aaux_packs_dist[i][j], c, &frame_ptr[3], channel, i >= c->sys->difseg_size/2);
            for (d = 8; d < 80; d+=2) {
                of = c->sys->audio_shuffle[i][j] + (d - 8)/2 * c->sys->audio_stride;
                if (of*2 >= size)
                    continue;

                frame_ptr[d] = *av_fifo_peek2(c->audio_data[channel], of*2+1);
                frame_ptr[d+1] = *av_fifo_peek2(c->audio_data[channel], of*2);
            }
            frame_ptr += 16 * 80;
        }
    }
}
