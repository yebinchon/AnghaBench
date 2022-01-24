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
struct TYPE_6__ {int xll_size; int xll_sync_offset; scalar_t__ xll_delay_nframes; int /*<<< orphan*/  xll_sync_present; } ;
struct TYPE_5__ {int exss_size_nbits; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ DCAExssParser ;
typedef  TYPE_2__ DCAExssAsset ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(DCAExssParser *s, DCAExssAsset *asset)
{
    // Size of XLL data in extension substream
    asset->xll_size = FUNC0(&s->gb, s->exss_size_nbits) + 1;

    // XLL sync word present flag
    if ((asset->xll_sync_present = FUNC1(&s->gb))) {
        int xll_delay_nbits;

        // Peak bit rate smoothing buffer size
        FUNC3(&s->gb, 4);

        // Number of bits for XLL decoding delay
        xll_delay_nbits = FUNC0(&s->gb, 5) + 1;

        // Initial XLL decoding delay in frames
        asset->xll_delay_nframes = FUNC2(&s->gb, xll_delay_nbits);

        // Number of bytes offset to XLL sync
        asset->xll_sync_offset = FUNC0(&s->gb, s->exss_size_nbits);
    } else {
        asset->xll_delay_nframes = 0;
        asset->xll_sync_offset = 0;
    }
}