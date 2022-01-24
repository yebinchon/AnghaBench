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
struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {scalar_t__ format; } ;
typedef  int /*<<< orphan*/  GXFStreamContext ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ AV_PIX_FMT_YUV420P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(AVIOContext *pb, GXFStreamContext *sc, AVStream *st)
{
    int dv_umf_data = 0;

    if (st->codecpar->format == AV_PIX_FMT_YUV420P)
        dv_umf_data |= 0x20; /* marks as DVCAM instead of DVPRO */
    FUNC0(pb, dv_umf_data);
    FUNC0(pb, 0);
    FUNC0(pb, 0);
    FUNC0(pb, 0);
    FUNC0(pb, 0);
    FUNC0(pb, 0);
    FUNC0(pb, 0);
    FUNC0(pb, 0);
    return 32;
}