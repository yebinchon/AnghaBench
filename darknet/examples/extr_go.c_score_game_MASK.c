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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int FUNC7 (float*,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,char*,char*,float*) ; 
 int /*<<< orphan*/  stderr ; 

float FUNC9(float *board)
{
    int i;
    FILE *f = FUNC2("game.txt", "w");
    int count = FUNC7(board, f);
    FUNC3(*f, "final_score\n");
    FUNC0(f);
    FILE *p = FUNC6("./gnugo --mode gtp < game.txt", "r");
    for(i = 0; i < count; ++i){
        FUNC4(FUNC1(p));
        FUNC4(FUNC1(p));
    }
    char *l = 0;
    float score = 0;
    char player = 0;
    while((l = FUNC1(p))){
        FUNC3(stderr, "%s  \t", l);
        int n = FUNC8(l, "= %c+%f", &player, &score);
        FUNC4(l);
        if (n == 2) break;
    }
    if(player == 'W') score = -score;
    FUNC5(p);
    return score;
}