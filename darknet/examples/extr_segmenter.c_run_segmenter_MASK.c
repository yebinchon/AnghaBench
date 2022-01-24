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
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int,char*) ; 
 int FUNC3 (int,char**,char*) ; 
 char* FUNC4 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int gpu_index ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*,int*,int,int,int) ; 

void FUNC13(int argc, char **argv)
{
    if(argc < 4){
        FUNC6(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }

    char *gpu_list = FUNC4(argc, argv, "-gpus", 0);
    int *gpus = 0;
    int gpu = 0;
    int ngpus = 0;
    if(gpu_list){
        FUNC8("%s\n", gpu_list);
        int len = FUNC11(gpu_list);
        ngpus = 1;
        int i;
        for(i = 0; i < len; ++i){
            if (gpu_list[i] == ',') ++ngpus;
        }
        gpus = FUNC1(ngpus, sizeof(int));
        for(i = 0; i < ngpus; ++i){
            gpus[i] = FUNC0(gpu_list);
            gpu_list = FUNC9(gpu_list, ',')+1;
        }
    } else {
        gpu = gpu_index;
        gpus = &gpu;
        ngpus = 1;
    }

    int cam_index = FUNC5(argc, argv, "-c", 0);
    int clear = FUNC3(argc, argv, "-clear");
    int display = FUNC3(argc, argv, "-display");
    char *data = argv[3];
    char *cfg = argv[4];
    char *weights = (argc > 5) ? argv[5] : 0;
    char *filename = (argc > 6) ? argv[6]: 0;
    if(0==FUNC10(argv[2], "test")) FUNC7(data, cfg, weights, filename);
    else if(0==FUNC10(argv[2], "train")) FUNC12(data, cfg, weights, gpus, ngpus, clear, display);
    else if(0==FUNC10(argv[2], "demo")) FUNC2(data, cfg, weights, cam_index, filename);
}