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
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ next_klv; scalar_t__ length; scalar_t__ key; scalar_t__ offset; } ;
typedef  TYPE_1__ KLVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ INT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mxf_klv_key ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(KLVPacket *klv, AVIOContext *pb)
{
    int64_t length, pos;
    if (!FUNC4(pb, mxf_klv_key, 4))
        return AVERROR_INVALIDDATA;
    klv->offset = FUNC1(pb) - 4;
    FUNC3(klv->key, mxf_klv_key, 4);
    FUNC0(pb, klv->key + 4, 12);
    length = FUNC2(pb);
    if (length < 0)
        return length;
    klv->length = length;
    pos = FUNC1(pb);
    if (pos > INT64_MAX - length)
        return AVERROR_INVALIDDATA;
    klv->next_klv = pos + length;
    return 0;
}