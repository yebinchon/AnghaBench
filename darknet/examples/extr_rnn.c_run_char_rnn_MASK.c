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
 float FUNC2 (int,char**,char*,double) ; 
 int FUNC3 (int,char**,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,char*,float,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,float,int,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 

void FUNC13(int argc, char **argv)
{
    if(argc < 4){
        FUNC4(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }
    char *filename = FUNC1(argc, argv, "-file", "data/shakespeare.txt");
    char *seed = FUNC1(argc, argv, "-seed", "\n\n");
    int len = FUNC3(argc, argv, "-len", 1000);
    float temp = FUNC2(argc, argv, "-temp", .7);
    int rseed = FUNC3(argc, argv, "-srand", FUNC8(0));
    int clear = FUNC0(argc, argv, "-clear");
    int tokenized = FUNC0(argc, argv, "-tokenized");
    char *tokens = FUNC1(argc, argv, "-tokens", 0);

    char *cfg = argv[3];
    char *weights = (argc > 4) ? argv[4] : 0;
    if(0==FUNC5(argv[2], "train")) FUNC9(cfg, weights, filename, clear, tokenized);
    else if(0==FUNC5(argv[2], "valid")) FUNC10(cfg, weights, seed);
    else if(0==FUNC5(argv[2], "validtactic")) FUNC11(cfg, weights, seed);
    else if(0==FUNC5(argv[2], "vec")) FUNC12(cfg, weights, seed);
    else if(0==FUNC5(argv[2], "generate")) FUNC6(cfg, weights, len, seed, temp, rseed, tokens);
    else if(0==FUNC5(argv[2], "generatetactic")) FUNC7(cfg, weights, len, temp, rseed, tokens);
}