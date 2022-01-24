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
 int /*<<< orphan*/  FUNC0 (char*,char*,float,int,char*,int /*<<< orphan*/ ,int,int,char*,int,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int,char**,char*,int /*<<< orphan*/ ) ; 
 float FUNC2 (int,char**,char*,double) ; 
 int FUNC3 (int,char**,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,float) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  voc_names ; 

void FUNC10(int argc, char **argv)
{
    char *prefix = FUNC1(argc, argv, "-prefix", 0);
    float thresh = FUNC2(argc, argv, "-thresh", .2);
    int cam_index = FUNC3(argc, argv, "-c", 0);
    int frame_skip = FUNC3(argc, argv, "-s", 0);
    if(argc < 4){
        FUNC4(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }

    int avg = FUNC3(argc, argv, "-avg", 1);
    char *cfg = argv[3];
    char *weights = (argc > 4) ? argv[4] : 0;
    char *filename = (argc > 5) ? argv[5]: 0;
    if(0==FUNC5(argv[2], "test")) FUNC6(cfg, weights, filename, thresh);
    else if(0==FUNC5(argv[2], "train")) FUNC7(cfg, weights);
    else if(0==FUNC5(argv[2], "valid")) FUNC8(cfg, weights);
    else if(0==FUNC5(argv[2], "recall")) FUNC9(cfg, weights);
    else if(0==FUNC5(argv[2], "demo")) FUNC0(cfg, weights, thresh, cam_index, filename, voc_names, 20, frame_skip, prefix, avg, .5, 0,0,0,0);
}