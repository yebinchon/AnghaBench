#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {scalar_t__ format; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ AV_PIX_FMT_YUV420P ; 
 int TRACK_AUX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(AVIOContext *pb, AVStream *st)
{
    int64_t track_aux_data = 0;

    FUNC0(pb, TRACK_AUX);
    FUNC0(pb, 8);
    if (st->codecpar->format == AV_PIX_FMT_YUV420P)
        track_aux_data |= 0x01;     /* marks stream as DVCAM instead of DVPRO */
    track_aux_data |= 0x40000000;   /* aux data is valid */
    FUNC1(pb, track_aux_data);
    return 8;
}