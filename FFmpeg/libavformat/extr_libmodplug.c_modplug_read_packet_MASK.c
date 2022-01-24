#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int stream_index; int* data; double pts; double dts; scalar_t__ size; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int video_switch; double w; double h; double packet_count; double ts_per_packet; int linesize; int /*<<< orphan*/  f; scalar_t__ video_stream; scalar_t__ expr; scalar_t__ print_textinfo; int /*<<< orphan*/  fsize; } ;
typedef  TYPE_1__ ModPlugContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_PKT_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,size_t) ; 
 size_t VAR_H ; 
 size_t VAR_ORDER ; 
 size_t VAR_PATTERN ; 
 size_t VAR_ROW ; 
 size_t VAR_SPEED ; 
 size_t VAR_TEMPO ; 
 size_t VAR_TIME ; 
 int VAR_VARS_NB ; 
 size_t VAR_W ; 
 size_t VAR_X ; 
 size_t VAR_Y ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 double FUNC9 (scalar_t__,double*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s, AVPacket *pkt)
{
    ModPlugContext *modplug = s->priv_data;

    if (modplug->video_stream) {
        modplug->video_switch ^= 1; // one video packet for one audio packet
        if (modplug->video_switch) {
            double var_values[VAR_VARS_NB];

            var_values[VAR_W      ] = modplug->w;
            var_values[VAR_H      ] = modplug->h;
            var_values[VAR_TIME   ] = modplug->packet_count * modplug->ts_per_packet;
            var_values[VAR_SPEED  ] = FUNC4  (modplug->f);
            var_values[VAR_TEMPO  ] = FUNC5  (modplug->f);
            var_values[VAR_ORDER  ] = FUNC1  (modplug->f);
            var_values[VAR_PATTERN] = FUNC2(modplug->f);
            var_values[VAR_ROW    ] = FUNC3    (modplug->f);

            if (FUNC10(pkt, modplug->fsize) < 0)
                return FUNC0(ENOMEM);
            pkt->stream_index = 1;
            FUNC12(pkt->data, 0, modplug->fsize);

            if (modplug->print_textinfo) {
                char intbuf[32];
                FUNC7(0, "speed",   VAR_SPEED);
                FUNC7(1, "tempo",   VAR_TEMPO);
                FUNC7(2, "order",   VAR_ORDER);
                FUNC7(3, "pattern", VAR_PATTERN);
                FUNC7(4, "row",     VAR_ROW);
                FUNC7(5, "ts",      VAR_TIME);
            }

            if (modplug->expr) {
                int x, y;
                for (y = 0; y < modplug->h; y++) {
                    for (x = 0; x < modplug->w; x++) {
                        double color;
                        var_values[VAR_X] = x;
                        var_values[VAR_Y] = y;
                        color = FUNC9(modplug->expr, var_values, NULL);
                        pkt->data[y*modplug->linesize + x*3 + 2] |= FUNC8((int)color, 0, 0xf)<<4;
                    }
                }
            }
            pkt->pts = pkt->dts = var_values[VAR_TIME];
            pkt->flags |= AV_PKT_FLAG_KEY;
            return 0;
        }
    }

    if (FUNC10(pkt, AUDIO_PKT_SIZE) < 0)
        return FUNC0(ENOMEM);

    if (modplug->video_stream)
        pkt->pts = pkt->dts = modplug->packet_count++ * modplug->ts_per_packet;

    pkt->size = FUNC6(modplug->f, pkt->data, AUDIO_PKT_SIZE);
    if (pkt->size <= 0) {
        FUNC11(pkt);
        return pkt->size == 0 ? AVERROR_EOF : FUNC0(EIO);
    }
    return 0;
}