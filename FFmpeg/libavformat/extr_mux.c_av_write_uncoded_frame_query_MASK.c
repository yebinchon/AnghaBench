#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int (* write_uncoded_frame ) (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {TYPE_4__* oformat; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_WRITE_UNCODED_FRAME_QUERY ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(AVFormatContext *s, int stream_index)
{
    FUNC1(s->oformat);
    if (!s->oformat->write_uncoded_frame)
        return FUNC0(ENOSYS);
    return s->oformat->write_uncoded_frame(s, stream_index, NULL,
                                           AV_WRITE_UNCODED_FRAME_QUERY);
}