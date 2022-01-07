
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* sys; } ;
struct TYPE_5__ {int frame_size; long difseg_size; long n_difchan; } ;
typedef TYPE_2__ DVMuxContext ;


 int dv_timecode ;
 int dv_video_recdate ;
 int dv_video_rectime ;
 int dv_write_pack (int ,TYPE_2__*,int *) ;

__attribute__((used)) static void dv_inject_metadata(DVMuxContext *c, uint8_t* frame)
{
    int j, k;
    uint8_t* buf;

    for (buf = frame; buf < frame + c->sys->frame_size; buf += 150 * 80) {

        for (j = 80; j < 80 * 3; j += 80) {
            for (k = 6; k < 6 * 8; k += 8)
                dv_write_pack(dv_timecode, c, &buf[j+k]);

            if (((long)(buf-frame)/(c->sys->frame_size/(c->sys->difseg_size*c->sys->n_difchan))%c->sys->difseg_size) > 5) {
                dv_write_pack(dv_video_recdate, c, &buf[j+14]);
                dv_write_pack(dv_video_rectime, c, &buf[j+22]);
                dv_write_pack(dv_video_recdate, c, &buf[j+38]);
                dv_write_pack(dv_video_rectime, c, &buf[j+46]);
            }
        }


        for (j = 80*3 + 3; j < 80*6; j += 80) {
            dv_write_pack(dv_video_recdate, c, &buf[j+5*2]);
            dv_write_pack(dv_video_rectime, c, &buf[j+5*3]);
            dv_write_pack(dv_video_recdate, c, &buf[j+5*11]);
            dv_write_pack(dv_video_rectime, c, &buf[j+5*12]);
        }
    }
}
