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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (float*,int) ; 

int FUNC2(float *board, FILE *fp)
{
    int i, j;
    int count = 3;
    FUNC0(fp, "komi 6.5\n");
    FUNC0(fp, "boardsize 19\n");
    FUNC0(fp, "clear_board\n");
    for(j = 0; j < 19; ++j){
        for(i = 0; i < 19; ++i){
            if(FUNC1(board,j*19 + i) == 1) FUNC0(fp, "play black %c%d\n", 'A'+i+(i>=8), 19-j);
            if(FUNC1(board,j*19 + i) == -1) FUNC0(fp, "play white %c%d\n", 'A'+i+(i>=8), 19-j);
            if(FUNC1(board,j*19 + i)) ++count;
        }
    }
    return count;
}