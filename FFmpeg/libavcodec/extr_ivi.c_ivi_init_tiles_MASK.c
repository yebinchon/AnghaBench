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
struct TYPE_6__ {int height; int width; int /*<<< orphan*/  mb_size; TYPE_1__* tiles; } ;
struct TYPE_5__ {int xpos; int ypos; scalar_t__ num_MBs; scalar_t__ mbs; scalar_t__ ref_mbs; void* height; void* width; scalar_t__ data_size; scalar_t__ is_empty; int /*<<< orphan*/  mb_size; } ;
typedef  TYPE_1__ IVITile ;
typedef  int /*<<< orphan*/  IVIMbInfo ;
typedef  TYPE_2__ IVIBandDesc ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(const IVIBandDesc *band, IVITile *ref_tile,
                          int p, int b, int t_height, int t_width)
{
    int x, y;
    IVITile *tile = band->tiles;

    for (y = 0; y < band->height; y += t_height) {
        for (x = 0; x < band->width; x += t_width) {
            tile->xpos     = x;
            tile->ypos     = y;
            tile->mb_size  = band->mb_size;
            tile->width    = FUNC1(band->width - x,  t_width);
            tile->height   = FUNC1(band->height - y, t_height);
            tile->is_empty = tile->data_size = 0;
            /* calculate number of macroblocks */
            tile->num_MBs  = FUNC2(tile->width, tile->height,
                                              band->mb_size);

            FUNC3(&tile->mbs);
            tile->mbs = FUNC5(tile->num_MBs, sizeof(IVIMbInfo));
            if (!tile->mbs)
                return FUNC0(ENOMEM);

            tile->ref_mbs = 0;
            if (p || b) {
                if (tile->num_MBs != ref_tile->num_MBs) {
                    FUNC4(NULL, AV_LOG_DEBUG, "ref_tile mismatch\n");
                    return AVERROR_INVALIDDATA;
                }
                tile->ref_mbs = ref_tile->mbs;
                ref_tile++;
            }
            tile++;
        }
    }

    return 0;
}