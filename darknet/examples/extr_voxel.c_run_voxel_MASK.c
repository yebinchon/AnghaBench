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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

void FUNC5(int argc, char **argv)
{
    if(argc < 4){
        FUNC1(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }

    char *cfg = argv[3];
    char *weights = (argc > 4) ? argv[4] : 0;
    char *filename = (argc > 5) ? argv[5] : 0;
    if(0==FUNC2(argv[2], "train")) FUNC4(cfg, weights);
    else if(0==FUNC2(argv[2], "test")) FUNC3(cfg, weights, filename);
    else if(0==FUNC2(argv[2], "extract")) FUNC0(argv[3], argv[4], argv[5]);
    /*
       else if(0==strcmp(argv[2], "valid")) validate_voxel(cfg, weights);
     */
}