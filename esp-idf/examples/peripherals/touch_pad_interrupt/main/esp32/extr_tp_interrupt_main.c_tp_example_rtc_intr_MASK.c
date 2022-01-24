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
typedef  int uint32_t ;

/* Variables and functions */
 int TOUCH_PAD_MAX ; 
 int* s_pad_activated ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static void FUNC2(void *arg)
{
    uint32_t pad_intr = FUNC1();
    //clear interrupt
    FUNC0();
    for (int i = 0; i < TOUCH_PAD_MAX; i++) {
        if ((pad_intr >> i) & 0x01) {
            s_pad_activated[i] = true;
        }
    }
}