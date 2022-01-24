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
struct TYPE_3__ {scalar_t__ sample_rate; scalar_t__ channels; scalar_t__ chan_config; } ;
typedef  TYPE_1__ MPEG4AudioConfig ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(GetBitContext *gb, MPEG4AudioConfig *c)
{
    if (FUNC3(gb) < 112)
        return AVERROR_INVALIDDATA;

    if (FUNC4(gb, 32) != FUNC0('A','L','S','\0'))
        return AVERROR_INVALIDDATA;

    // override AudioSpecificConfig channel configuration and sample rate
    // which are buggy in old ALS conformance files
    c->sample_rate = FUNC4(gb, 32);

    if (c->sample_rate <= 0) {
        FUNC1(NULL, AV_LOG_ERROR, "Invalid sample rate %d\n", c->sample_rate);
        return AVERROR_INVALIDDATA;
    }

    // skip number of samples
    FUNC5(gb, 32);

    // read number of channels
    c->chan_config = 0;
    c->channels    = FUNC2(gb, 16) + 1;

    return 0;
}