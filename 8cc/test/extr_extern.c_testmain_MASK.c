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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  externvar1 ; 
 int /*<<< orphan*/  externvar2 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2() {
    FUNC1("extern");
    FUNC0(98, externvar1);
    FUNC0(99, externvar2);
}