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
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_HWACCEL ; 
 int* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static int *FUNC2(int n)
{
    int i, j, *fmts, count = 0;

    for (i = 0; i < n; i++) {
        const AVPixFmtDescriptor *desc = FUNC1(i);
        if (!(desc->flags & AV_PIX_FMT_FLAG_HWACCEL))
            count++;
    }

    if (!(fmts = FUNC0((count+1) * sizeof(int))))
        return NULL;
    for (j = 0, i = 0; i < n; i++) {
        const AVPixFmtDescriptor *desc = FUNC1(i);
        if (!(desc->flags & AV_PIX_FMT_FLAG_HWACCEL))
            fmts[j++] = i;
    }
    fmts[j] = -1;
    return fmts;
}