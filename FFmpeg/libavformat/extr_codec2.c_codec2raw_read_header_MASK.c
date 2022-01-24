#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  extradata; } ;
struct TYPE_15__ {TYPE_1__* internal; TYPE_2__* priv_data; } ;
struct TYPE_14__ {TYPE_5__* codecpar; } ;
struct TYPE_13__ {scalar_t__ mode; } ;
struct TYPE_12__ {scalar_t__ data_offset; } ;
typedef  TYPE_2__ Codec2Context ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVPRIV_CODEC2_EXTRADATA_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    Codec2Context *c2 = s->priv_data;
    AVStream *st;
    int ret;

    if (c2->mode < 0) {
        //FIXME: using a default value of -1 for mandatory options is an incredibly ugly hack
        FUNC1(s, AV_LOG_ERROR, "-mode must be set in order to make sense of raw codec2 files\n");
        return FUNC0(EINVAL);
    }

    st = FUNC2(s, NULL);
    if (!st) {
        return FUNC0(ENOMEM);
    }

    ret = FUNC5(st->codecpar, AVPRIV_CODEC2_EXTRADATA_SIZE);
    if (ret) {
        return ret;
    }

    s->internal->data_offset = 0;
    FUNC3(st->codecpar->extradata, c2->mode);

    return FUNC4(s, st);
}