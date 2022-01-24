#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; scalar_t__ data; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ AVStereo3D ;
typedef  TYPE_2__ AVFrameSideData ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int AV_STEREO3D_FLAG_INVERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(AVFilterContext *ctx, AVFrameSideData *sd)
{
    AVStereo3D *stereo;

    FUNC0(ctx, AV_LOG_INFO, "stereoscopic information: ");
    if (sd->size < sizeof(*stereo)) {
        FUNC0(ctx, AV_LOG_ERROR, "invalid data");
        return;
    }

    stereo = (AVStereo3D *)sd->data;

    FUNC0(ctx, AV_LOG_INFO, "type - %s", FUNC1(stereo->type));

    if (stereo->flags & AV_STEREO3D_FLAG_INVERT)
        FUNC0(ctx, AV_LOG_INFO, " (inverted)");
}