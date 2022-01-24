#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int size; scalar_t__ data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int FUNC8(AVBSFContext *ctx, AVPacket *out)
{
    AVPacket *in;
    int ret = 0;

    ret = FUNC6(ctx, &in);
    if (ret < 0)
        return ret;

    if (in->size > 0xffff) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    ret = FUNC2(out, in->size + 2);
    if (ret < 0) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    ret = FUNC3(out, in);
    if (ret < 0)
        goto fail;

    FUNC1(out->data, in->size);
    FUNC7(out->data + 2, in->data, in->size);

fail:
    if (ret < 0)
        FUNC5(out);
    FUNC4(&in);
    return ret;
}