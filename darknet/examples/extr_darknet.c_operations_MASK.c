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
typedef  int /*<<< orphan*/  network ;

/* Variables and functions */
 int gpu_index ; 
 long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,float) ; 

void FUNC3(char *cfgfile)
{
    gpu_index = -1;
    network *net = FUNC1(cfgfile);
    long ops = FUNC0(net);
    FUNC2("Floating Point Operations: %ld\n", ops);
    FUNC2("Floating Point Operations: %.2f Bn\n", (float)ops/1000000000.);
}