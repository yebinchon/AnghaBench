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
typedef  int uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {scalar_t__ delay; scalar_t__ min_delay; scalar_t__ default_delay; int total_iter; int /*<<< orphan*/  max_delay; } ;
typedef  TYPE_1__ GIFDemuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int GIF_APP_EXT_LABEL ; 
 int GIF_GCE_EXT_LABEL ; 
 int /*<<< orphan*/  NETSCAPE_EXT_STR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    GIFDemuxContext *gdc = s->priv_data;
    AVIOContext *pb = s->pb;
    int sb_size, ext_label = FUNC3(pb);
    int ret;

    if (ext_label == GIF_GCE_EXT_LABEL) {
        if ((sb_size = FUNC3(pb)) < 4) {
            FUNC2(s, AV_LOG_FATAL, "Graphic Control Extension block's size less than 4.\n");
            return AVERROR_INVALIDDATA;
        }

        /* skip packed fields */
        if ((ret = FUNC6(pb, 1)) < 0)
            return ret;

        gdc->delay = FUNC5(pb);

        if (gdc->delay < gdc->min_delay)
            gdc->delay = gdc->default_delay;
        gdc->delay = FUNC1(gdc->delay, gdc->max_delay);

        /* skip the rest of the Graphic Control Extension block */
        if ((ret = FUNC6(pb, sb_size - 3)) < 0 )
            return ret;
    } else if (ext_label == GIF_APP_EXT_LABEL) {
        uint8_t data[256];

        sb_size = FUNC3(pb);
        ret = FUNC4(pb, data, sb_size);
        if (ret < 0 || !sb_size)
            return ret;

        if (sb_size == FUNC8(NETSCAPE_EXT_STR)) {
            sb_size = FUNC3(pb);
            ret = FUNC4(pb, data, sb_size);
            if (ret < 0 || !sb_size)
                return ret;

            if (sb_size == 3 && data[0] == 1) {
                gdc->total_iter = FUNC0(data+1);

                if (gdc->total_iter == 0)
                    gdc->total_iter = -1;
            }
        }
    }

    if ((ret = FUNC7(pb)) < 0)
        return ret;

    return 0;
}