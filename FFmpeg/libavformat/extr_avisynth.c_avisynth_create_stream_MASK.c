#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* priv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  id; } ;
struct TYPE_11__ {int /*<<< orphan*/  vi; } ;
typedef  TYPE_1__ AviSynthContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_UNKNOWN ; 
 TYPE_2__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s)
{
    AviSynthContext *avs = s->priv_data;
    AVStream *st;
    int ret;
    int id = 0;

    if (FUNC4(avs->vi)) {
        st = FUNC0(s, NULL);
        if (!st)
            return AVERROR_UNKNOWN;
        st->id = id++;
        if ((ret = FUNC2(s, st)))
            return ret;
    }
    if (FUNC3(avs->vi)) {
        st = FUNC0(s, NULL);
        if (!st)
            return AVERROR_UNKNOWN;
        st->id = id++;
        if ((ret = FUNC1(s, st)))
            return ret;
    }
    return 0;
}