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
typedef  enum AVFrameSideDataType { ____Placeholder_AVFrameSideDataType } AVFrameSideDataType ;
typedef  int /*<<< orphan*/  AVFrameSideData ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

AVFrameSideData *FUNC3(AVFrame *frame,
                                        enum AVFrameSideDataType type,
                                        int size)
{
    AVFrameSideData *ret;
    AVBufferRef *buf = FUNC0(size);
    ret = FUNC2(frame, type, buf);
    if (!ret)
        FUNC1(&buf);
    return ret;
}