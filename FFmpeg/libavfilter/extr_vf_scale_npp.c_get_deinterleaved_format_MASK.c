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
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {int nb_components; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 int AV_PIX_FMT_NONE ; 
 int FUNC0 (int**) ; 
 int FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int** deinterleaved_formats ; 

__attribute__((used)) static enum AVPixelFormat FUNC3(enum AVPixelFormat fmt)
{
    const AVPixFmtDescriptor *desc = FUNC2(fmt);
    int i, planes;

    planes = FUNC1(fmt);
    if (planes == desc->nb_components)
        return fmt;
    for (i = 0; i < FUNC0(deinterleaved_formats); i++)
        if (deinterleaved_formats[i][0] == fmt)
            return deinterleaved_formats[i][1];
    return AV_PIX_FMT_NONE;
}