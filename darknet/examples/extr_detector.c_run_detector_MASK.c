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
typedef  int /*<<< orphan*/  list ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,float,int,char*,char**,int,int,char*,int,float,int,int,int,int) ; 
 int FUNC3 (int,char**,char*) ; 
 char* FUNC4 (int,char**,char*,int /*<<< orphan*/ ) ; 
 float FUNC5 (int,char**,char*,double) ; 
 int FUNC6 (int,char**,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char** FUNC8 (char*) ; 
 int gpu_index ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC13 (char*,char) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,char*,char*,float,float,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 

void FUNC21(int argc, char **argv)
{
    char *prefix = FUNC4(argc, argv, "-prefix", 0);
    float thresh = FUNC5(argc, argv, "-thresh", .5);
    float hier_thresh = FUNC5(argc, argv, "-hier", .5);
    int cam_index = FUNC6(argc, argv, "-c", 0);
    int frame_skip = FUNC6(argc, argv, "-s", 0);
    int avg = FUNC6(argc, argv, "-avg", 3);
    if(argc < 4){
        FUNC7(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }
    char *gpu_list = FUNC4(argc, argv, "-gpus", 0);
    char *outfile = FUNC4(argc, argv, "-out", 0);
    int *gpus = 0;
    int gpu = 0;
    int ngpus = 0;
    if(gpu_list){
        FUNC11("%s\n", gpu_list);
        int len = FUNC15(gpu_list);
        ngpus = 1;
        int i;
        for(i = 0; i < len; ++i){
            if (gpu_list[i] == ',') ++ngpus;
        }
        gpus = FUNC1(ngpus, sizeof(int));
        for(i = 0; i < ngpus; ++i){
            gpus[i] = FUNC0(gpu_list);
            gpu_list = FUNC13(gpu_list, ',')+1;
        }
    } else {
        gpu = gpu_index;
        gpus = &gpu;
        ngpus = 1;
    }

    int clear = FUNC3(argc, argv, "-clear");
    int fullscreen = FUNC3(argc, argv, "-fullscreen");
    int width = FUNC6(argc, argv, "-w", 0);
    int height = FUNC6(argc, argv, "-h", 0);
    int fps = FUNC6(argc, argv, "-fps", 0);
    //int class = find_int_arg(argc, argv, "-class", 0);

    char *datacfg = argv[3];
    char *cfg = argv[4];
    char *weights = (argc > 5) ? argv[5] : 0;
    char *filename = (argc > 6) ? argv[6]: 0;
    if(0==FUNC14(argv[2], "test")) FUNC16(datacfg, cfg, weights, filename, thresh, hier_thresh, outfile, fullscreen);
    else if(0==FUNC14(argv[2], "train")) FUNC17(datacfg, cfg, weights, gpus, ngpus, clear);
    else if(0==FUNC14(argv[2], "valid")) FUNC18(datacfg, cfg, weights, outfile);
    else if(0==FUNC14(argv[2], "valid2")) FUNC19(datacfg, cfg, weights, outfile);
    else if(0==FUNC14(argv[2], "recall")) FUNC20(cfg, weights);
    else if(0==FUNC14(argv[2], "demo")) {
        list *options = FUNC12(datacfg);
        int classes = FUNC9(options, "classes", 20);
        char *name_list = FUNC10(options, "names", "data/names.list");
        char **names = FUNC8(name_list);
        FUNC2(cfg, weights, thresh, cam_index, filename, names, classes, frame_skip, prefix, avg, hier_thresh, width, height, fps, fullscreen);
    }
    //else if(0==strcmp(argv[2], "extract")) extract_detector(datacfg, cfg, weights, cam_index, filename, class, thresh, frame_skip);
    //else if(0==strcmp(argv[2], "censor")) censor_detector(datacfg, cfg, weights, cam_index, filename, class, thresh, frame_skip);
}