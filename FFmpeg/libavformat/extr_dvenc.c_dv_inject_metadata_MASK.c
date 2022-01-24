#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {TYPE_1__* sys; } ;
struct TYPE_5__ {int frame_size; long difseg_size; long n_difchan; } ;
typedef  TYPE_2__ DVMuxContext ;

/* Variables and functions */
 int /*<<< orphan*/  dv_timecode ; 
 int /*<<< orphan*/  dv_video_recdate ; 
 int /*<<< orphan*/  dv_video_rectime ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(DVMuxContext *c, uint8_t* frame)
{
    int j, k;
    uint8_t* buf;

    for (buf = frame; buf < frame + c->sys->frame_size; buf += 150 * 80) {
        /* DV subcode: 2nd and 3d DIFs */
        for (j = 80; j < 80 * 3; j += 80) {
            for (k = 6; k < 6 * 8; k += 8)
                FUNC0(dv_timecode, c, &buf[j+k]);

            if (((long)(buf-frame)/(c->sys->frame_size/(c->sys->difseg_size*c->sys->n_difchan))%c->sys->difseg_size) > 5) { /* FIXME: is this really needed ? */
                FUNC0(dv_video_recdate, c, &buf[j+14]);
                FUNC0(dv_video_rectime, c, &buf[j+22]);
                FUNC0(dv_video_recdate, c, &buf[j+38]);
                FUNC0(dv_video_rectime, c, &buf[j+46]);
            }
        }

        /* DV VAUX: 4th, 5th and 6th 3DIFs */
        for (j = 80*3 + 3; j < 80*6; j += 80) {
            FUNC0(dv_video_recdate, c, &buf[j+5*2]);
            FUNC0(dv_video_rectime, c, &buf[j+5*3]);
            FUNC0(dv_video_recdate, c, &buf[j+5*11]);
            FUNC0(dv_video_rectime, c, &buf[j+5*12]);
        }
    }
}