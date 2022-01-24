#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  time_base_in; int /*<<< orphan*/  par_in; } ;
struct TYPE_11__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  codecpar; TYPE_2__* internal; } ;
struct TYPE_9__ {int inited; int /*<<< orphan*/  pkt; TYPE_6__* bsf; } ;
struct TYPE_10__ {TYPE_1__ extract_extradata; } ;
typedef  TYPE_2__ AVStreamInternal ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVBitStreamFilter ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/  const*,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__**) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(AVStream *st)
{
    AVStreamInternal *sti = st->internal;
    const AVBitStreamFilter *f;
    int ret;

    f = FUNC3("extract_extradata");
    if (!f)
        goto finish;

    /* check that the codec id is supported */
    ret = FUNC8(st);
    if (!ret)
        goto finish;

    sti->extract_extradata.pkt = FUNC5();
    if (!sti->extract_extradata.pkt)
        return FUNC0(ENOMEM);

    ret = FUNC1(f, &sti->extract_extradata.bsf);
    if (ret < 0)
        goto fail;

    ret = FUNC7(sti->extract_extradata.bsf->par_in,
                                  st->codecpar);
    if (ret < 0)
        goto fail;

    sti->extract_extradata.bsf->time_base_in = st->time_base;

    ret = FUNC4(sti->extract_extradata.bsf);
    if (ret < 0)
        goto fail;

finish:
    sti->extract_extradata.inited = 1;

    return 0;
fail:
    FUNC2(&sti->extract_extradata.bsf);
    FUNC6(&sti->extract_extradata.pkt);
    return ret;
}