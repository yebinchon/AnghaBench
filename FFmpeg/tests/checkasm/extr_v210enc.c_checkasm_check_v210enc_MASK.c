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
struct TYPE_3__ {int /*<<< orphan*/  pack_line_10; int /*<<< orphan*/  pack_line_8; } ;
typedef  TYPE_1__ V210EncContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  uint16_t ; 
 int /*<<< orphan*/  uint8_t ; 

void FUNC4(void)
{
    V210EncContext h;

    FUNC2(&h);

    if (FUNC0(h.pack_line_8, "v210_planar_pack_8"))
        FUNC1(uint8_t, 0xffffffff);

    if (FUNC0(h.pack_line_10, "v210_planar_pack_10"))
        FUNC1(uint16_t, 0x03ff03ff);

    FUNC3("planar_pack");
}