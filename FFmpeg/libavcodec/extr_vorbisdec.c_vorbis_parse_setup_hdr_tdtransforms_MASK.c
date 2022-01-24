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
struct TYPE_3__ {int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ vorbis_context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(vorbis_context *vc)
{
    GetBitContext *gb = &vc->gb;
    unsigned i, vorbis_time_count = FUNC2(gb, 6) + 1;

    for (i = 0; i < vorbis_time_count; ++i) {
        unsigned vorbis_tdtransform = FUNC2(gb, 16);

        FUNC1(NULL, " Vorbis time domain transform %u: %u\n",
                vorbis_time_count, vorbis_tdtransform);

        if (vorbis_tdtransform) {
            FUNC0(vc->avctx, AV_LOG_ERROR, "Vorbis time domain transform data nonzero. \n");
            return AVERROR_INVALIDDATA;
        }
    }
    return 0;
}