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
struct TYPE_3__ {int transparent_color_index; int gce_disposal; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ GifState ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int GCE_DISPOSAL_NONE ; 
#define  GIF_GCE_EXT_LABEL 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC4(GifState *s)
{
    int ext_code, ext_len, gce_flags, gce_transparent_index;

    /* There must be at least 2 bytes:
     * 1 for extension label and 1 for extension length. */
    if (FUNC0(&s->gb) < 2)
        return AVERROR_INVALIDDATA;

    ext_code = FUNC1(&s->gb);
    ext_len  = FUNC1(&s->gb);

    FUNC3(s->avctx, "ext_code=0x%x len=%d\n", ext_code, ext_len);

    switch(ext_code) {
    case GIF_GCE_EXT_LABEL:
        if (ext_len != 4)
            goto discard_ext;

        /* We need at least 5 bytes more: 4 is for extension body
         * and 1 for next block size. */
        if (FUNC0(&s->gb) < 5)
            return AVERROR_INVALIDDATA;

        gce_flags    = FUNC1(&s->gb);
        FUNC2(&s->gb, 2);    // delay during which the frame is shown
        gce_transparent_index = FUNC1(&s->gb);
        if (gce_flags & 0x01)
            s->transparent_color_index = gce_transparent_index;
        else
            s->transparent_color_index = -1;
        s->gce_disposal = (gce_flags >> 2) & 0x7;

        FUNC3(s->avctx, "gce_flags=%x tcolor=%d disposal=%d\n",
               gce_flags,
               s->transparent_color_index, s->gce_disposal);

        if (s->gce_disposal > 3) {
            s->gce_disposal = GCE_DISPOSAL_NONE;
            FUNC3(s->avctx, "invalid value in gce_disposal (%d). Using default value of 0.\n", ext_len);
        }

        ext_len = FUNC1(&s->gb);
        break;
    }

    /* NOTE: many extension blocks can come after */
 discard_ext:
    while (ext_len) {
        /* There must be at least ext_len bytes and 1 for next block size byte. */
        if (FUNC0(&s->gb) < ext_len + 1)
            return AVERROR_INVALIDDATA;

        FUNC2(&s->gb, ext_len);
        ext_len = FUNC1(&s->gb);

        FUNC3(s->avctx, "ext_len1=%d\n", ext_len);
    }
    return 0;
}