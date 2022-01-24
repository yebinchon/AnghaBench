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
typedef  int uint32_t ;
struct TYPE_3__ {int* linesize; int /*<<< orphan*/ ** data; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC2(AVFrame *out, int x, int y, uint8_t fg[4])
{

    uint32_t color = FUNC0(out->data[0] + y * out->linesize[0] + x * 4);

    if ((color & 0xffffff) != 0)
        FUNC1(out->data[0] + y * out->linesize[0] + x * 4, FUNC0(fg) | color);
    else
        FUNC1(out->data[0] + y * out->linesize[0] + x * 4, FUNC0(fg));
}