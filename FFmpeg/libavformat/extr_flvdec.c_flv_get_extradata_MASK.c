#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  extradata; } ;
struct TYPE_10__ {int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {TYPE_1__* internal; TYPE_7__* codecpar; } ;
struct TYPE_8__ {int need_context_update; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_7__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVStream *st, int size)
{
    if (!size)
        return 0;

    FUNC1(&st->codecpar->extradata);
    if (FUNC2(s, st->codecpar, s->pb, size) < 0)
        return FUNC0(ENOMEM);
    st->internal->need_context_update = 1;
    return 0;
}