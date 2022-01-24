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
 int FUNC0 (int,char**,char*) ; 
 char* FUNC1 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  gpu_index ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,int) ; 
 int* FUNC5 (char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 

void FUNC10(int argc, char **argv)
{
    if(argc < 4){
        FUNC3(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }

    char *gpu_list = FUNC1(argc, argv, "-gpus", 0);
    int ngpus;
    int *gpus = FUNC5(gpu_list, &ngpus, gpu_index);


    int top = FUNC2(argc, argv, "-t", 0);
    int clear = FUNC0(argc, argv, "-clear");
    char *data = argv[3];
    char *cfg = argv[4];
    char *weights = (argc > 5) ? argv[5] : 0;
    char *filename = (argc > 6) ? argv[6]: 0;
    char *layer_s = (argc > 7) ? argv[7]: 0;
    if(0==FUNC6(argv[2], "predict")) FUNC4(data, cfg, weights, filename, top);
    else if(0==FUNC6(argv[2], "train")) FUNC7(data, cfg, weights, gpus, ngpus, clear);
    else if(0==FUNC6(argv[2], "valid")) FUNC9(data, cfg, weights);
    else if(0==FUNC6(argv[2], "validmulti")) FUNC8(data, cfg, weights);
}