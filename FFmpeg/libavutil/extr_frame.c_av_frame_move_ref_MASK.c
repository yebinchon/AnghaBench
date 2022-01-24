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
struct TYPE_6__ {scalar_t__ width; scalar_t__ height; scalar_t__ channels; scalar_t__ extended_data; scalar_t__ data; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(AVFrame *dst, AVFrame *src)
{
    FUNC0(dst->width == 0 && dst->height == 0);
    FUNC0(dst->channels == 0);

    *dst = *src;
    if (src->extended_data == src->data)
        dst->extended_data = dst->data;
    FUNC2(src, 0, sizeof(*src));
    FUNC1(src);
}