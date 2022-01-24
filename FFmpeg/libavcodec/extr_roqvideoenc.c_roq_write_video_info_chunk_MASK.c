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
struct TYPE_3__ {int /*<<< orphan*/  out_buf; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ RoqContext ;

/* Variables and functions */
 int /*<<< orphan*/  RoQ_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(RoqContext *enc)
{
    /* ROQ info chunk */
    FUNC1(&enc->out_buf, RoQ_INFO);

    /* Size: 8 bytes */
    FUNC2(&enc->out_buf, 8);

    /* Unused argument */
    FUNC0(&enc->out_buf, 0x00);
    FUNC0(&enc->out_buf, 0x00);

    /* Width */
    FUNC1(&enc->out_buf, enc->width);

    /* Height */
    FUNC1(&enc->out_buf, enc->height);

    /* Unused in Quake 3, mimics the output of the real encoder */
    FUNC0(&enc->out_buf, 0x08);
    FUNC0(&enc->out_buf, 0x00);
    FUNC0(&enc->out_buf, 0x04);
    FUNC0(&enc->out_buf, 0x00);
}