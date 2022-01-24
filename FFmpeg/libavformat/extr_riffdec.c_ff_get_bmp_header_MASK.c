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
typedef  void* uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {int /*<<< orphan*/  bits_per_coded_sample; scalar_t__ height; void* width; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(AVIOContext *pb, AVStream *st, uint32_t *size)
{
    int tag1;
    uint32_t size_ = FUNC1(pb);
    if (size)
        *size = size_;
    st->codecpar->width  = FUNC1(pb);
    st->codecpar->height = (int32_t)FUNC1(pb);
    FUNC0(pb); /* planes */
    st->codecpar->bits_per_coded_sample = FUNC0(pb); /* depth */
    tag1                                = FUNC1(pb);
    FUNC1(pb); /* ImageSize */
    FUNC1(pb); /* XPelsPerMeter */
    FUNC1(pb); /* YPelsPerMeter */
    FUNC1(pb); /* ClrUsed */
    FUNC1(pb); /* ClrImportant */
    return tag1;
}