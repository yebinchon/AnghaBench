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
struct TYPE_7__ {unsigned int MaxCLL; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  max_luminance; scalar_t__ has_luminance; } ;
typedef  TYPE_1__ AVMasteringDisplayMetadata ;
typedef  TYPE_2__ AVFrameSideData ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVContentLightMetadata ;

/* Variables and functions */
 int /*<<< orphan*/  AV_FRAME_DATA_CONTENT_LIGHT_LEVEL ; 
 int /*<<< orphan*/  AV_FRAME_DATA_MASTERING_DISPLAY_METADATA ; 
 double REFERENCE_WHITE ; 
 int /*<<< orphan*/  FUNC0 (double,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(AVFrame *in, double peak)
{
    AVFrameSideData *sd = FUNC1(in, AV_FRAME_DATA_CONTENT_LIGHT_LEVEL);

    if (sd) {
        AVContentLightMetadata *clm = (AVContentLightMetadata *)sd->data;
        clm->MaxCLL = (unsigned)(peak * REFERENCE_WHITE);
    }

    sd = FUNC1(in, AV_FRAME_DATA_MASTERING_DISPLAY_METADATA);
    if (sd) {
        AVMasteringDisplayMetadata *metadata = (AVMasteringDisplayMetadata *)sd->data;
        if (metadata->has_luminance)
            metadata->max_luminance = FUNC0(peak * REFERENCE_WHITE, 10000);
    }
}