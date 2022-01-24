#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/ * priv_data; int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  SIFFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 scalar_t__ TAG_SIFF ; 
 scalar_t__ TAG_SOUN ; 
 scalar_t__ TAG_VBV1 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    SIFFContext *c  = s->priv_data;
    uint32_t tag;
    int ret;

    if (FUNC2(pb) != TAG_SIFF)
        return AVERROR_INVALIDDATA;
    FUNC3(pb, 4); // ignore size
    tag = FUNC2(pb);

    if (tag != TAG_VBV1 && tag != TAG_SOUN) {
        FUNC1(s, AV_LOG_ERROR, "Not a VBV file\n");
        return AVERROR_INVALIDDATA;
    }

    if (tag == TAG_VBV1 && (ret = FUNC5(s, c, pb)) < 0)
        return ret;
    if (tag == TAG_SOUN && (ret = FUNC4(s, c, pb)) < 0)
        return ret;
    if (FUNC2(pb) != FUNC0('B', 'O', 'D', 'Y')) {
        FUNC1(s, AV_LOG_ERROR, "'BODY' chunk is missing\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC3(pb, 4); // ignore size

    return 0;
}