#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* comp; } ;
struct TYPE_5__ {int plane; } ;
typedef  TYPE_2__ AVPixFmtDescriptor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 TYPE_2__* FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(const uint8_t * const data[4], enum AVPixelFormat pix_fmt,
                                const int linesizes[4])
{
    const AVPixFmtDescriptor *desc = FUNC1(pix_fmt);
    int i;

    FUNC0(desc);

    for (i = 0; i < 4; i++) {
        int plane = desc->comp[i].plane;
        if (!data[plane] || !linesizes[plane])
            return 0;
    }

    return 1;
}