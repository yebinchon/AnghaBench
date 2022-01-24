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
typedef  int /*<<< orphan*/  detection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,float,float,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,float,int*) ; 

detection *FUNC2(network *net, int w, int h, float thresh, float hier, int *map, int relative, int *num)
{
    detection *dets = FUNC1(net, thresh, num);
    FUNC0(net, w, h, thresh, hier, map, relative, dets);
    return dets;
}