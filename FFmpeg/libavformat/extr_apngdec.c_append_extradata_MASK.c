#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int extradata_size; int /*<<< orphan*/ * extradata; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT_MAX ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(AVCodecParameters *par, AVIOContext *pb, int len)
{
    int previous_size = par->extradata_size;
    int new_size, ret;
    uint8_t *new_extradata;

    if (previous_size > INT_MAX - len)
        return AVERROR_INVALIDDATA;

    new_size = previous_size + len;
    new_extradata = FUNC1(par->extradata, new_size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!new_extradata)
        return FUNC0(ENOMEM);
    par->extradata = new_extradata;
    par->extradata_size = new_size;

    if ((ret = FUNC2(pb, par->extradata + previous_size, len)) < 0)
        return ret;

    return previous_size;
}