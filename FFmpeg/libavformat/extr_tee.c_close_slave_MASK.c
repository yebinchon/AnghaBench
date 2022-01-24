#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* avf; int /*<<< orphan*/ * bsfs; int /*<<< orphan*/ * stream_map; scalar_t__ header_written; } ;
typedef  TYPE_1__ TeeSlave ;
struct TYPE_8__ {unsigned int nb_streams; int /*<<< orphan*/  pb; } ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(TeeSlave *tee_slave)
{
    AVFormatContext *avf;
    unsigned i;
    int ret = 0;

    avf = tee_slave->avf;
    if (!avf)
        return 0;

    if (tee_slave->header_written)
        ret = FUNC2(avf);

    if (tee_slave->bsfs) {
        for (i = 0; i < avf->nb_streams; ++i)
            FUNC0(&tee_slave->bsfs[i]);
    }
    FUNC1(&tee_slave->stream_map);
    FUNC1(&tee_slave->bsfs);

    FUNC4(avf, &avf->pb);
    FUNC3(avf);
    tee_slave->avf = NULL;
    return ret;
}