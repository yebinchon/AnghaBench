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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {scalar_t__ descr_count; scalar_t__ max_descr_count; TYPE_1__* active_descr; int /*<<< orphan*/  pb; TYPE_1__* descr; } ;
struct TYPE_5__ {int es_id; } ;
typedef  TYPE_2__ MP4DescrParseContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  MP4DecConfigDescrTag ; 
 int /*<<< orphan*/  MP4SLDescrTag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC3(MP4DescrParseContext *d, int64_t off, int len)
{
    int es_id = 0;
    int ret   = 0;

    if (d->descr_count >= d->max_descr_count)
        return AVERROR_INVALIDDATA;
    FUNC0(&d->pb, &es_id);
    d->active_descr = d->descr + (d->descr_count++);

    d->active_descr->es_id = es_id;
    FUNC2(&d->pb, &off, &len);
    if ((ret = FUNC1(d, off, len, MP4DecConfigDescrTag)) < 0)
        return ret;
    FUNC2(&d->pb, &off, &len);
    if (len > 0)
        ret = FUNC1(d, off, len, MP4SLDescrTag);
    d->active_descr = NULL;
    return ret;
}