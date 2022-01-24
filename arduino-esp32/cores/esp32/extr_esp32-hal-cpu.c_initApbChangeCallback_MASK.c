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

/* Variables and functions */
 int /*<<< orphan*/  apb_change_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void FUNC1(){
    static volatile bool initialized = false;
    if(!initialized){
        initialized = true;
        apb_change_lock = FUNC0();
        if(!apb_change_lock){
            initialized = false;
        }
    }
}