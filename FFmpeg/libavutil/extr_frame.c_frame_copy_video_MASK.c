#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  src_data ;
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; int /*<<< orphan*/  linesize; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(AVFrame *dst, const AVFrame *src)
{
    const uint8_t *src_data[4];
    int i, planes;

    if (dst->width  < src->width ||
        dst->height < src->height)
        return FUNC0(EINVAL);

    planes = FUNC2(dst->format);
    for (i = 0; i < planes; i++)
        if (!dst->data[i] || !src->data[i])
            return FUNC0(EINVAL);

    FUNC3(src_data, src->data, sizeof(src_data));
    FUNC1(dst->data, dst->linesize,
                  src_data, src->linesize,
                  dst->format, src->width, src->height);

    return 0;
}