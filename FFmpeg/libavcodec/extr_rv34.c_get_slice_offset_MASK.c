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
struct TYPE_3__ {int* slice_offset; scalar_t__ slice_count; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx, const uint8_t *buf, int n, int slice_count, int buf_size)
{
    if (n < slice_count) {
        if(avctx->slice_count) return avctx->slice_offset[n];
        else                   return FUNC1(buf + n*8 - 4) == 1 ? FUNC1(buf + n*8) :  FUNC0(buf + n*8);
    } else
        return buf_size;
}