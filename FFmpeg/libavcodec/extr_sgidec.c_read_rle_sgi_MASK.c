#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {int height; int depth; int width; int bytes_per_channel; int /*<<< orphan*/  g; int /*<<< orphan*/  linesize; } ;
typedef  TYPE_1__ SgiState ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  SEEK_SET ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(uint8_t *out_buf, SgiState *s)
{
    uint8_t *dest_row;
    unsigned int len = s->height * s->depth * 4;
    GetByteContext g_table = s->g;
    unsigned int y, z;
    unsigned int start_offset;
    int linesize, ret;

    /* size of  RLE offset and length tables */
    if (len * 2 > FUNC1(&s->g)) {
        return AVERROR_INVALIDDATA;
    }

    for (z = 0; z < s->depth; z++) {
        dest_row = out_buf;
        for (y = 0; y < s->height; y++) {
            linesize = s->width * s->depth;
            dest_row -= s->linesize;
            start_offset = FUNC0(&g_table);
            FUNC2(&s->g, start_offset, SEEK_SET);
            if (s->bytes_per_channel == 1)
                ret = FUNC4(s, dest_row + z, linesize, s->depth);
            else
                ret = FUNC3(s, (uint16_t *)dest_row + z, linesize, s->depth);
            if (ret != s->width)
                return AVERROR_INVALIDDATA;
        }
    }
    return 0;
}