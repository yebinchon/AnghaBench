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
typedef  int /*<<< orphan*/  network ;
typedef  int /*<<< orphan*/  image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,float*) ; 
 float* FUNC4 (int /*<<< orphan*/ *,float*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,float*,int) ; 

float FUNC7(network *net, float *board, float *move, int multi)
{
    float *output = FUNC4(net, board);
    FUNC1(19*19+1, output, 1, move, 1);
    float result = output[19*19 + 1];
    int i;
    if(multi){
        image bim = FUNC3(19, 19, 3, board);
        for(i = 1; i < 8; ++i){
            FUNC5(bim, i);
            if(i >= 4) FUNC2(bim);

            float *output = FUNC4(net, board);
            image oim = FUNC3(19, 19, 1, output);
            result += output[19*19 + 1];

            if(i >= 4) FUNC2(oim);
            FUNC5(oim, -i);

            FUNC0(19*19+1, 1, output, 1, move, 1);

            if(i >= 4) FUNC2(bim);
            FUNC5(bim, -i);
        }
        result = result/8;
        FUNC6(19*19+1, 1./8., move, 1);
    }
    for(i = 0; i < 19*19; ++i){
        if(board[i] || board[i+19*19]) move[i] = 0;
    }
    return result;
}