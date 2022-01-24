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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  format; int /*<<< orphan*/  linesize; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC2(AVFrame *f, const uint8_t *src, int width, int height)
{
    uint8_t *src_data[4];
    int src_linesize[4];
    FUNC1(src_data, src_linesize, src,
                         f->format, width, height, 1);
    FUNC0(f->data, f->linesize, (const uint8_t **)src_data, src_linesize,
                  f->format, width, height);
}