#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;

/* Variables and functions */
 scalar_t__ AV_SAMPLE_FMT_FLT ; 
 scalar_t__ AV_SAMPLE_FMT_S32 ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(enum AVSampleFormat dst_fmt, enum AVSampleFormat src_fmt)
{
    int score = 0;

    if (FUNC2(dst_fmt) != FUNC2(src_fmt))
        score ++;

    if (FUNC0(dst_fmt) < FUNC0(src_fmt)) {
        score += 100 * (FUNC0(src_fmt) - FUNC0(dst_fmt));
    }else
        score += 10  * (FUNC0(dst_fmt) - FUNC0(src_fmt));

    if (FUNC1(dst_fmt) == AV_SAMPLE_FMT_S32 &&
        FUNC1(src_fmt) == AV_SAMPLE_FMT_FLT)
        score += 20;

    if (FUNC1(dst_fmt) == AV_SAMPLE_FMT_FLT &&
        FUNC1(src_fmt) == AV_SAMPLE_FMT_S32)
        score += 2;

    return score;
}