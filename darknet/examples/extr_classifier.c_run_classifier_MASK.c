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
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 int FUNC4 (int,char**,char*) ; 
 char* FUNC5 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  gpu_index ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*,int) ; 
 int* FUNC11 (char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,char*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,char*) ; 

void FUNC22(int argc, char **argv)
{
    if(argc < 4){
        FUNC7(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }

    char *gpu_list = FUNC5(argc, argv, "-gpus", 0);
    int ngpus;
    int *gpus = FUNC11(gpu_list, &ngpus, gpu_index);


    int cam_index = FUNC6(argc, argv, "-c", 0);
    int top = FUNC6(argc, argv, "-t", 0);
    int clear = FUNC4(argc, argv, "-clear");
    char *data = argv[3];
    char *cfg = argv[4];
    char *weights = (argc > 5) ? argv[5] : 0;
    char *filename = (argc > 6) ? argv[6]: 0;
    char *layer_s = (argc > 7) ? argv[7]: 0;
    int layer = layer_s ? FUNC0(layer_s) : -1;
    if(0==FUNC12(argv[2], "predict")) FUNC10(data, cfg, weights, filename, top);
    else if(0==FUNC12(argv[2], "fout")) FUNC3(data, cfg, weights, filename);
    else if(0==FUNC12(argv[2], "try")) FUNC16(data, cfg, weights, filename, FUNC0(layer_s));
    else if(0==FUNC12(argv[2], "train")) FUNC15(data, cfg, weights, gpus, ngpus, clear);
    else if(0==FUNC12(argv[2], "demo")) FUNC2(data, cfg, weights, cam_index, filename);
    else if(0==FUNC12(argv[2], "gun")) FUNC8(data, cfg, weights, cam_index, filename);
    else if(0==FUNC12(argv[2], "threat")) FUNC14(data, cfg, weights, cam_index, filename);
    else if(0==FUNC12(argv[2], "test")) FUNC13(data, cfg, weights, layer);
    else if(0==FUNC12(argv[2], "csv")) FUNC1(data, cfg, weights);
    else if(0==FUNC12(argv[2], "label")) FUNC9(data, cfg, weights);
    else if(0==FUNC12(argv[2], "valid")) FUNC21(data, cfg, weights);
    else if(0==FUNC12(argv[2], "validmulti")) FUNC20(data, cfg, weights);
    else if(0==FUNC12(argv[2], "valid10")) FUNC17(data, cfg, weights);
    else if(0==FUNC12(argv[2], "validcrop")) FUNC18(data, cfg, weights);
    else if(0==FUNC12(argv[2], "validfull")) FUNC19(data, cfg, weights);
}