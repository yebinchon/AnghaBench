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
struct TYPE_3__ {int green_metadata_type; int period_type; void* xsd_metric_value; void* xsd_metric_type; void* percent_alpha_point_deblocking_instance; void* percent_six_tap_filtering; void* percent_intra_coded_macroblocks; void* percent_non_zero_macroblocks; void* num_pictures; void* num_seconds; } ;
typedef  TYPE_1__ H264SEIGreenMetaData ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(H264SEIGreenMetaData *h, GetBitContext *gb)
{
    h->green_metadata_type = FUNC0(gb, 8);

    if (h->green_metadata_type == 0) {
        h->period_type = FUNC0(gb, 8);

        if (h->period_type == 2)
            h->num_seconds = FUNC0(gb, 16);
        else if (h->period_type == 3)
            h->num_pictures = FUNC0(gb, 16);

        h->percent_non_zero_macroblocks            = FUNC0(gb, 8);
        h->percent_intra_coded_macroblocks         = FUNC0(gb, 8);
        h->percent_six_tap_filtering               = FUNC0(gb, 8);
        h->percent_alpha_point_deblocking_instance = FUNC0(gb, 8);

    } else if (h->green_metadata_type == 1) {
        h->xsd_metric_type  = FUNC0(gb, 8);
        h->xsd_metric_value = FUNC0(gb, 16);
    }

    return 0;
}