#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ uint8_t ;
typedef  int uint16_t ;
struct TYPE_10__ {int nb_components; int log2_chroma_w; int log2_chroma_h; int flags; int step; int depth; int /*<<< orphan*/  shift; int /*<<< orphan*/  offset; int /*<<< orphan*/  plane; struct TYPE_10__* comp; scalar_t__* name; } ;
typedef  TYPE_2__ AVPixFmtDescriptor ;
typedef  TYPE_2__ AVComponentDescriptor ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_BAYER ; 
 int AV_PIX_FMT_FLAG_BITSTREAM ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (scalar_t__*) ; 
 TYPE_2__* av_pix_fmt_descriptors ; 
 int /*<<< orphan*/  FUNC4 (int*,void*,int*,TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,TYPE_1__**,int*,TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC6(void){
    int i, j;

    for (i=0; i<FUNC0(av_pix_fmt_descriptors); i++) {
        const AVPixFmtDescriptor *d = &av_pix_fmt_descriptors[i];
        uint8_t fill[4][8+6+3] = {{0}};
        uint8_t *data[4] = {fill[0], fill[1], fill[2], fill[3]};
        int linesize[4] = {0,0,0,0};
        uint16_t tmp[2];

        if (!d->name && !d->nb_components && !d->log2_chroma_w && !d->log2_chroma_h && !d->flags)
            continue;
//         av_log(NULL, AV_LOG_DEBUG, "Checking: %s\n", d->name);
        FUNC1(d->log2_chroma_w <= 3);
        FUNC1(d->log2_chroma_h <= 3);
        FUNC1(d->nb_components <= 4);
        FUNC1(d->name && d->name[0]);
        FUNC2(FUNC3(d->name) == i);

        for (j=0; j<FUNC0(d->comp); j++) {
            const AVComponentDescriptor *c = &d->comp[j];
            if(j>=d->nb_components) {
                FUNC1(!c->plane && !c->step && !c->offset && !c->shift && !c->depth);
                continue;
            }
            if (d->flags & AV_PIX_FMT_FLAG_BITSTREAM) {
                FUNC1(c->step >= c->depth);
            } else {
                FUNC1(8*c->step >= c->depth);
            }
            if (d->flags & AV_PIX_FMT_FLAG_BAYER)
                continue;
            FUNC4(tmp, (void*)data, linesize, d, 0, 0, j, 2, 0);
            FUNC1(tmp[0] == 0 && tmp[1] == 0);
            tmp[0] = tmp[1] = (1<<c->depth) - 1;
            FUNC5(tmp, data, linesize, d, 0, 0, j, 2);
        }
    }
}