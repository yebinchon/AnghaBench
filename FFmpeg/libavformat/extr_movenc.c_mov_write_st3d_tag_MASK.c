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
typedef  int int8_t ;
struct TYPE_3__ {scalar_t__ flags; int type; } ;
typedef  TYPE_1__ AVStereo3D ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
#define  AV_STEREO3D_2D 130 
#define  AV_STEREO3D_SIDEBYSIDE 129 
#define  AV_STEREO3D_TOPBOTTOM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVIOContext *pb, AVStereo3D *stereo_3d)
{
    int8_t stereo_mode;

    if (stereo_3d->flags != 0) {
        FUNC0(s, AV_LOG_WARNING, "Unsupported stereo_3d flags %x. st3d not written.\n", stereo_3d->flags);
        return 0;
    }

    switch (stereo_3d->type) {
    case AV_STEREO3D_2D:
        stereo_mode = 0;
        break;
    case AV_STEREO3D_TOPBOTTOM:
        stereo_mode = 1;
        break;
    case AV_STEREO3D_SIDEBYSIDE:
        stereo_mode = 2;
        break;
    default:
        FUNC0(s, AV_LOG_WARNING, "Unsupported stereo_3d type %s. st3d not written.\n", FUNC1(stereo_3d->type));
        return 0;
    }
    FUNC3(pb, 13); /* size */
    FUNC4(pb, "st3d");
    FUNC3(pb, 0); /* version = 0 & flags = 0 */
    FUNC2(pb, stereo_mode);
    return 13;
}