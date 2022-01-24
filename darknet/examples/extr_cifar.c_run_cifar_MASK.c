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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

void FUNC10(int argc, char **argv)
{
    if(argc < 4){
        FUNC2(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }

    char *cfg = argv[3];
    char *weights = (argc > 4) ? argv[4] : 0;
    if(0==FUNC3(argv[2], "train")) FUNC8(cfg, weights);
    else if(0==FUNC3(argv[2], "extract")) FUNC1();
    else if(0==FUNC3(argv[2], "distill")) FUNC9(cfg, weights);
    else if(0==FUNC3(argv[2], "test")) FUNC4(cfg, weights);
    else if(0==FUNC3(argv[2], "multi")) FUNC7(cfg, weights);
    else if(0==FUNC3(argv[2], "csv")) FUNC5(cfg, weights);
    else if(0==FUNC3(argv[2], "csvtrain")) FUNC6(cfg, weights);
    else if(0==FUNC3(argv[2], "eval")) FUNC0();
}