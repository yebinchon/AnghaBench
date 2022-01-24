#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int rate; int bits; int block_align; } ;
typedef  TYPE_1__ SIFFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ TAG_SHDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, SIFFContext *c, AVIOContext *pb)
{
    if (FUNC3(pb) != TAG_SHDR) {
        FUNC0(s, AV_LOG_ERROR, "Header chunk is missing\n");
        return AVERROR_INVALIDDATA;
    }
    if (FUNC1(pb) != 8) {
        FUNC0(s, AV_LOG_ERROR, "Header chunk size is incorrect\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC4(pb, 4); // unknown value
    c->rate        = FUNC2(pb);
    c->bits        = FUNC2(pb);
    c->block_align = c->rate * (c->bits >> 3);
    return FUNC5(s, c);
}