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
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
typedef  int /*<<< orphan*/  AVPixFmtDescriptor ;
typedef  int /*<<< orphan*/  AVFilterFormats ;

/* Variables and functions */
 int AVMEDIA_TYPE_AUDIO ; 
 int AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int) ; 

AVFilterFormats *FUNC4(enum AVMediaType type)
{
    AVFilterFormats *ret = NULL;

    if (type == AVMEDIA_TYPE_VIDEO) {
        const AVPixFmtDescriptor *desc = NULL;
        while ((desc = FUNC2(desc))) {
            if (FUNC3(&ret, FUNC1(desc)) < 0)
                return NULL;
        }
    } else if (type == AVMEDIA_TYPE_AUDIO) {
        enum AVSampleFormat fmt = 0;
        while (FUNC0(fmt)) {
            if (FUNC3(&ret, fmt) < 0)
                return NULL;
            fmt++;
        }
    }

    return ret;
}