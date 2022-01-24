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
 int /*<<< orphan*/ * FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC2(char *cfgfile, char *weightfile, char *outfile, int max)
{
    gpu_index = -1;
    network *net = FUNC0(cfgfile, weightfile, 1);
    FUNC1(net, outfile, max);
}