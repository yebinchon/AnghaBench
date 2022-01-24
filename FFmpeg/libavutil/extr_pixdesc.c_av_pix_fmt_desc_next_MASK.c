#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ name; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*) ; 
 TYPE_1__ const* av_pix_fmt_descriptors ; 

const AVPixFmtDescriptor *FUNC1(const AVPixFmtDescriptor *prev)
{
    if (!prev)
        return &av_pix_fmt_descriptors[0];
    while (prev - av_pix_fmt_descriptors < FUNC0(av_pix_fmt_descriptors) - 1) {
        prev++;
        if (prev->name)
            return prev;
    }
    return NULL;
}