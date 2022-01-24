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
typedef  int /*<<< orphan*/  slice_buffer ;
struct TYPE_3__ {int y; void* b1; void* b0; } ;
typedef  TYPE_1__ DWTCompose ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(DWTCompose *cs, slice_buffer *sb,
                                             int height, int stride_line)
{
    cs->b0 = FUNC1(sb,
                                   FUNC0(-1 - 1, height - 1) * stride_line);
    cs->b1 = FUNC1(sb, FUNC0(-1, height - 1) * stride_line);
    cs->y  = -1;
}