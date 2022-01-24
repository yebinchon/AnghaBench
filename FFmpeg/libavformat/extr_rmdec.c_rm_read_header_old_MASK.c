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
struct TYPE_11__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  priv_data; } ;
struct TYPE_9__ {int old_format; } ;
typedef  TYPE_1__ RMDemuxContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    RMDemuxContext *rm = s->priv_data;
    AVStream *st;

    rm->old_format = 1;
    st = FUNC1(s, NULL);
    if (!st)
        return -1;
    st->priv_data = FUNC2();
    if (!st->priv_data)
        return FUNC0(ENOMEM);
    return FUNC3(s, s->pb, st, st->priv_data, 1);
}