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
 int FUNC0 (char*) ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,float,float,float,int,int) ; 
 int FUNC3 (int,char**,char*) ; 
 char* FUNC4 (int,char**,char*,int /*<<< orphan*/ ) ; 
 float FUNC5 (int,char**,char*,double) ; 
 int FUNC6 (int,char**,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int gpu_index ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (char*,char) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int,char*) ; 

void FUNC16(int argc, char **argv)
{
    //boards_go();
    if(argc < 4){
        FUNC7(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }

    char *gpu_list = FUNC4(argc, argv, "-gpus", 0);
    int *gpus = 0;
    int gpu = 0;
    int ngpus = 0;
    if(gpu_list){
        FUNC8("%s\n", gpu_list);
        int len = FUNC12(gpu_list);
        ngpus = 1;
        int i;
        for(i = 0; i < len; ++i){
            if (gpu_list[i] == ',') ++ngpus;
        }
        gpus = FUNC1(ngpus, sizeof(int));
        for(i = 0; i < ngpus; ++i){
            gpus[i] = FUNC0(gpu_list);
            gpu_list = FUNC10(gpu_list, ',')+1;
        }
    } else {
        gpu = gpu_index;
        gpus = &gpu;
        ngpus = 1;
    }
    int clear = FUNC3(argc, argv, "-clear");

    char *cfg = argv[3];
    char *weights = (argc > 4) ? argv[4] : 0;
    char *c2 = (argc > 5) ? argv[5] : 0;
    char *w2 = (argc > 6) ? argv[6] : 0;
    int multi = FUNC3(argc, argv, "-multi");
    int anon = FUNC3(argc, argv, "-anon");
    int iters = FUNC6(argc, argv, "-iters", 500);
    int resign = FUNC6(argc, argv, "-resign", 175);
    float cpuct = FUNC5(argc, argv, "-cpuct", 5);
    float temp = FUNC5(argc, argv, "-temp", .1);
    float time = FUNC5(argc, argv, "-time", 0);
    if(0==FUNC11(argv[2], "train")) FUNC14(cfg, weights, c2, gpus, ngpus, clear);
    else if(0==FUNC11(argv[2], "valid")) FUNC15(cfg, weights, multi, c2);
    else if(0==FUNC11(argv[2], "self")) FUNC9(cfg, weights, c2, w2, multi);
    else if(0==FUNC11(argv[2], "test")) FUNC13(cfg, weights, multi);
    else if(0==FUNC11(argv[2], "engine")) FUNC2(cfg, weights, iters, time, temp, cpuct, anon, resign);
}