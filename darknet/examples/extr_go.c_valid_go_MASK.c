#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {double learning_rate; double momentum; double decay; } ;
typedef  TYPE_1__ network ;
struct TYPE_8__ {int n; char** data; } ;
typedef  TYPE_2__ moves ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 float* FUNC1 (int,int) ; 
 TYPE_2__ FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (float*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,float*,float*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,float*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(char *cfgfile, char *weightfile, int multi, char *filename)
{
    FUNC8(FUNC10(0));
    char *base = FUNC0(cfgfile);
    FUNC6("%s\n", base);
    network *net = FUNC3(cfgfile, weightfile, 0);
    FUNC7(net, 1);
    FUNC6("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);

    float *board = FUNC1(19*19*3, sizeof(float));
    float *move = FUNC1(19*19+2, sizeof(float));
    // moves m = load_go_moves("/home/pjreddie/backup/go.test");
    moves m = FUNC2(filename);

    int N = m.n;
    int i,j;
    int correct = 0;
    for (i = 0; i <N; ++i) {
        char *b = m.data[i];
        int player = b[0] - '0';
        //int result = b[1] - '0';
        int row = b[2];
        int col = b[3];
        int truth = col + 19*row;
        FUNC9(b+4, board);
        if(player > 0) for(j = 0; j < 19*19; ++j) board[19*19*2 + j] = 1;
        FUNC5(net, board, move, multi);
        int index = FUNC4(move, 19*19+1);
        if(index == truth) ++correct;
        FUNC6("%d Accuracy %f\n", i, (float) correct/(i+1));
    }
}