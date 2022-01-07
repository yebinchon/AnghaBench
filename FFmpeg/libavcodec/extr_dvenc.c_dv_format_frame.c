
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_2__* sys; TYPE_1__* avctx; } ;
struct TYPE_7__ {int height; int n_difchan; int difseg_size; scalar_t__ dsf; } ;
struct TYPE_6__ {int frame_number; } ;
typedef TYPE_3__ DVVideoContext ;


 int dv_header525 ;
 int dv_header625 ;
 int dv_sect_audio ;
 int dv_sect_header ;
 int dv_sect_subcode ;
 int dv_sect_vaux ;
 int dv_sect_video ;
 int dv_video_control ;
 int dv_video_source ;
 int dv_write_dif_id (int ,int,int,int,int *) ;
 int dv_write_pack (int ,TYPE_3__*,int *) ;
 scalar_t__ dv_write_ssyb_id (int,int,int *) ;
 int memset (int *,int,int) ;

__attribute__((used)) static void dv_format_frame(DVVideoContext *c, uint8_t *buf)
{
    int chan, i, j, k;

    int chan_offset = 2*(c->sys->height == 720 && c->avctx->frame_number & 1);

    for (chan = 0; chan < c->sys->n_difchan; chan++) {
        for (i = 0; i < c->sys->difseg_size; i++) {
            memset(buf, 0xff, 80 * 6);


            buf += dv_write_dif_id(dv_sect_header, chan+chan_offset, i, 0, buf);
            buf += dv_write_pack((c->sys->dsf ? dv_header625 : dv_header525),
                                 c, buf);
            buf += 72;


            for (j = 0; j < 2; j++) {
                buf += dv_write_dif_id(dv_sect_subcode, chan+chan_offset, i, j, buf);
                for (k = 0; k < 6; k++)
                    buf += dv_write_ssyb_id(k, (i < c->sys->difseg_size / 2), buf) + 5;
                buf += 29;
            }


            for (j = 0; j < 3; j++) {
                buf += dv_write_dif_id(dv_sect_vaux, chan+chan_offset, i, j, buf);
                buf += dv_write_pack(dv_video_source, c, buf);
                buf += dv_write_pack(dv_video_control, c, buf);
                buf += 7 * 5;
                buf += dv_write_pack(dv_video_source, c, buf);
                buf += dv_write_pack(dv_video_control, c, buf);
                buf += 4 * 5 + 2;
            }


            for (j = 0; j < 135; j++) {
                if (j % 15 == 0) {
                    memset(buf, 0xff, 80);
                    buf += dv_write_dif_id(dv_sect_audio, chan+chan_offset, i, j/15, buf);
                    buf += 77;
                }
                buf += dv_write_dif_id(dv_sect_video, chan+chan_offset, i, j, buf);
                buf += 77;



            }
        }
    }
}
