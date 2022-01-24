#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int frame_width; int frame_height; int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ SVQ1EncContext ;

/* Variables and functions */
 int AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ ff_svq1_frame_size_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC3(SVQ1EncContext *s, int frame_type)
{
    int i;

    /* frame code */
    FUNC2(&s->pb, 22, 0x20);

    /* temporal reference (sure hope this is a "don't care") */
    FUNC2(&s->pb, 8, 0x00);

    /* frame type */
    FUNC2(&s->pb, 2, frame_type - 1);

    if (frame_type == AV_PICTURE_TYPE_I) {
        /* no checksum since frame code is 0x20 */
        /* no embedded string either */
        /* output 5 unknown bits (2 + 2 + 1) */
        FUNC2(&s->pb, 5, 2); /* 2 needed by quicktime decoder */

        i = FUNC1((void*)ff_svq1_frame_size_table,
                             FUNC0(ff_svq1_frame_size_table),
                             s->frame_width, s->frame_height);
        FUNC2(&s->pb, 3, i);

        if (i == 7) {
            FUNC2(&s->pb, 12, s->frame_width);
            FUNC2(&s->pb, 12, s->frame_height);
        }
    }

    /* no checksum or extra data (next 2 bits get 0) */
    FUNC2(&s->pb, 2, 0);
}