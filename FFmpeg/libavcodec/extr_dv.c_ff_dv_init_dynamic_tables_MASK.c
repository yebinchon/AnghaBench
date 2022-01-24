#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int n_difchan; int difseg_size; } ;
struct TYPE_10__ {TYPE_1__* work_chunks; } ;
struct TYPE_9__ {int buf_offset; int /*<<< orphan*/ * mb_coordinates; } ;
typedef  TYPE_2__ DVVideoContext ;
typedef  TYPE_3__ AVDVProfile ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__ const*) ; 
 scalar_t__ FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,int,int,int,int /*<<< orphan*/ *) ; 

int FUNC3(DVVideoContext *ctx, const AVDVProfile *d)
{
    int j, i, c, s, p;

    p = i = 0;
    for (c = 0; c < d->n_difchan; c++) {
        for (s = 0; s < d->difseg_size; s++) {
            p += 6;
            for (j = 0; j < 27; j++) {
                p += !(j % 3);
                if (!(FUNC0(d) && c != 0 && s == 11) &&
                    !(FUNC1(d) && s > 9)) {
                    FUNC2(d, c, s, j, &ctx->work_chunks[i].mb_coordinates[0]);
                    ctx->work_chunks[i++].buf_offset = p;
                }
                p += 5;
            }
        }
    }

    return 0;
}