#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* cur_addr ; 
 void* cur_vdp2 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ tex_space ; 
 scalar_t__ vdp2_tex ; 

__attribute__((used)) static void FUNC4(void)    {
    cur_addr = (uint32) tex_space;
    cur_vdp2 = (uint32) vdp2_tex;

    FUNC3();
    FUNC2();

    FUNC0();
    FUNC1();
}