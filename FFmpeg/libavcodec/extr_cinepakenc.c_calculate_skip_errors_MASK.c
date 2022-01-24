#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  strip_info ;
struct TYPE_7__ {int w; TYPE_1__* mb; } ;
struct TYPE_6__ {int /*<<< orphan*/  skip_error; } ;
typedef  TYPE_2__ CinepakEncContext ;

/* Variables and functions */
 scalar_t__ MB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static void FUNC2(CinepakEncContext *s, int h,
                                  uint8_t *last_data[4], int last_linesize[4],
                                  uint8_t *data[4], int linesize[4],
                                  strip_info *info)
{
    int x, y, i;
    uint8_t *sub_last_data    [4], *sub_pict_data    [4];
    int      sub_last_linesize[4],  sub_pict_linesize[4];

    for (i = y = 0; y < h; y += MB_SIZE)
        for (x = 0; x < s->w; x += MB_SIZE, i++) {
            FUNC1(s, x, y, last_data, last_linesize,
                            sub_last_data, sub_last_linesize);
            FUNC1(s, x, y, data, linesize,
                            sub_pict_data, sub_pict_linesize);

            s->mb[i].skip_error =
                FUNC0(s,
                                      sub_last_data, sub_last_linesize,
                                      sub_pict_data, sub_pict_linesize);
        }
}