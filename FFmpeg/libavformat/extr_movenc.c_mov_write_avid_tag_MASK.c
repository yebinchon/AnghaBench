#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int* vos_data; int vos_len; scalar_t__ tag; TYPE_2__* par; } ;
struct TYPE_5__ {int num; int den; } ;
struct TYPE_6__ {int width; scalar_t__ color_range; int height; TYPE_1__ sample_aspect_ratio; } ;
typedef  TYPE_3__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ AVCOL_RANGE_MPEG ; 
 scalar_t__ AVCOL_RANGE_UNSPECIFIED ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(AVIOContext *pb, MOVTrack *track)
{
    int i;
    int interlaced;
    int cid;
    int display_width = track->par->width;

    if (track->vos_data && track->vos_len > 0x29) {
        if (FUNC5(track->vos_data) != 0) {
            /* looks like a DNxHD bit stream */
            interlaced = (track->vos_data[5] & 2);
            cid = FUNC0(track->vos_data + 0x28);
        } else {
            FUNC2(NULL, AV_LOG_WARNING, "Could not locate DNxHD bit stream in vos_data\n");
            return 0;
        }
    } else {
        FUNC2(NULL, AV_LOG_WARNING, "Could not locate DNxHD bit stream, vos_data too small\n");
        return 0;
    }

    FUNC3(pb, 24); /* size */
    FUNC6(pb, "ACLR");
    FUNC6(pb, "ACLR");
    FUNC6(pb, "0001");
    if (track->par->color_range == AVCOL_RANGE_MPEG || /* Legal range (16-235) */
        track->par->color_range == AVCOL_RANGE_UNSPECIFIED) {
        FUNC3(pb, 1); /* Corresponds to 709 in official encoder */
    } else { /* Full range (0-255) */
        FUNC3(pb, 2); /* Corresponds to RGB in official encoder */
    }
    FUNC3(pb, 0); /* unknown */

    if (track->tag == FUNC1('A','V','d','h')) {
        FUNC3(pb, 32);
        FUNC6(pb, "ADHR");
        FUNC6(pb, "0001");
        FUNC3(pb, cid);
        FUNC3(pb, 0); /* unknown */
        FUNC3(pb, 1); /* unknown */
        FUNC3(pb, 0); /* unknown */
        FUNC3(pb, 0); /* unknown */
        return 0;
    }

    FUNC3(pb, 24); /* size */
    FUNC6(pb, "APRG");
    FUNC6(pb, "APRG");
    FUNC6(pb, "0001");
    FUNC3(pb, 1); /* unknown */
    FUNC3(pb, 0); /* unknown */

    FUNC3(pb, 120); /* size */
    FUNC6(pb, "ARES");
    FUNC6(pb, "ARES");
    FUNC6(pb, "0001");
    FUNC3(pb, cid); /* dnxhd cid, some id ? */
    if (   track->par->sample_aspect_ratio.num > 0
        && track->par->sample_aspect_ratio.den > 0)
        display_width = display_width * track->par->sample_aspect_ratio.num / track->par->sample_aspect_ratio.den;
    FUNC3(pb, display_width);
    /* values below are based on samples created with quicktime and avid codecs */
    if (interlaced) {
        FUNC3(pb, track->par->height / 2);
        FUNC3(pb, 2); /* unknown */
        FUNC3(pb, 0); /* unknown */
        FUNC3(pb, 4); /* unknown */
    } else {
        FUNC3(pb, track->par->height);
        FUNC3(pb, 1); /* unknown */
        FUNC3(pb, 0); /* unknown */
        if (track->par->height == 1080)
            FUNC3(pb, 5); /* unknown */
        else
            FUNC3(pb, 6); /* unknown */
    }
    /* padding */
    for (i = 0; i < 10; i++)
        FUNC4(pb, 0);

    return 0;
}