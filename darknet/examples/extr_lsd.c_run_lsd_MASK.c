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
 char* FUNC1 (int,char**,char*,char*) ; 
 int FUNC2 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,char*,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*,int,int,char*,int) ; 

void FUNC11(int argc, char **argv)
{
    if(argc < 4){
        FUNC3(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }

    int clear = FUNC0(argc, argv, "-clear");
    int display = FUNC0(argc, argv, "-display");
    int batches = FUNC2(argc, argv, "-b", 0);
    char *file = FUNC1(argc, argv, "-file", "/home/pjreddie/data/imagenet/imagenet1k.train.list");

    char *cfg = argv[3];
    char *weights = (argc > 4) ? argv[4] : 0;
    char *filename = (argc > 5) ? argv[5] : 0;
    char *acfg = argv[5];
    char *aweights = (argc > 6) ? argv[6] : 0;
    //if(0==strcmp(argv[2], "train")) train_lsd(cfg, weights, clear);
    //else if(0==strcmp(argv[2], "train2")) train_lsd2(cfg, weights, acfg, aweights, clear);
    //else if(0==strcmp(argv[2], "traincolor")) train_colorizer(cfg, weights, acfg, aweights, clear);
    //else if(0==strcmp(argv[2], "train3")) train_lsd3(argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], clear);
    if(0==FUNC5(argv[2], "traingan")) FUNC9(cfg, weights, acfg, aweights, clear, display, file, batches);
    else if(0==FUNC5(argv[2], "trainprog")) FUNC10(cfg, weights, acfg, aweights, clear, display, file, batches);
    else if(0==FUNC5(argv[2], "traincolor")) FUNC8(cfg, weights, acfg, aweights, clear, display);
    else if(0==FUNC5(argv[2], "gan")) FUNC6(cfg, weights);
    else if(0==FUNC5(argv[2], "inter")) FUNC4(cfg, weights);
    else if(0==FUNC5(argv[2], "test")) FUNC7(cfg, weights, filename, 0);
    else if(0==FUNC5(argv[2], "color")) FUNC7(cfg, weights, filename, 1);
    /*
       else if(0==strcmp(argv[2], "valid")) validate_lsd(cfg, weights);
     */
}