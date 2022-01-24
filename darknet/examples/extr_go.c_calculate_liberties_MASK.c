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
 int* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (float*,int) ; 
 int /*<<< orphan*/  FUNC3 (float*,int*,int*,int,int,scalar_t__) ; 

__attribute__((used)) static int *FUNC4(float *board)
{
    int *lib = FUNC0(19*19, sizeof(int));
    int visited[19*19];
    int i, j;
    for(j = 0; j < 19; ++j){
        for(i = 0; i < 19; ++i){
            FUNC1(visited, 0, 19*19*sizeof(int));
            int index = j*19 + i;
            if(!FUNC2(board,index)){
                if ((i > 0)  && FUNC2(board,index - 1)) FUNC3(board, lib, visited, j, i-1, FUNC2(board,index-1));
                if ((i < 18) && FUNC2(board,index + 1)) FUNC3(board, lib, visited, j, i+1, FUNC2(board,index+1));
                if ((j > 0)  && FUNC2(board,index - 19)) FUNC3(board, lib, visited, j-1, i, FUNC2(board,index-19));
                if ((j < 18) && FUNC2(board,index + 19)) FUNC3(board, lib, visited, j+1, i, FUNC2(board,index+19));
            }
        }
    }
    return lib;
}