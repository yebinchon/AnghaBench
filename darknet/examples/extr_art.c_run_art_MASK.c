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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (int,char**,char*,int /*<<< orphan*/ ) ; 

void FUNC2(int argc, char **argv)
{
    int cam_index = FUNC1(argc, argv, "-c", 0);
    char *cfg = argv[2];
    char *weights = argv[3];
    FUNC0(cfg, weights, cam_index);
}