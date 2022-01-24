#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network ;
struct TYPE_3__ {int row; int col; } ;
typedef  TYPE_1__ move ;
typedef  int /*<<< orphan*/  mcts_tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,float*) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,float,float) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (float*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 TYPE_1__ FUNC12 (int /*<<< orphan*/ *,float,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*,float*,int,int,float,int /*<<< orphan*/ ) ; 
 float FUNC14 (float*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

void FUNC18(char *filename, char *weightfile, char *f2, char *w2, int multi)
{
    mcts_tree *tree1 = 0;
    mcts_tree *tree2 = 0;
    network *net = FUNC6(filename, weightfile, 0);
    //set_batch_network(net, 1);

    network *net2;
    if (f2) {
        net2 = FUNC11(f2);
        if(w2){
            FUNC7(net2, w2);
        }
    } else {
        net2 = FUNC1(1, sizeof(network));
        *net2 = *net;
    }
    FUNC16(FUNC17(0));
    char boards[600][93];
    int count = 0;
    //set_batch_network(net, 1);
    //set_batch_network(net2, 1);
    float *board = FUNC1(19*19*3, sizeof(float));
    FUNC4(board);
    float *one = FUNC1(19*19*3, sizeof(float));
    float *two = FUNC1(19*19*3, sizeof(float));
    int done = 0;
    int player = 1;
    int p1 = 0;
    int p2 = 0;
    int total = 0;
    float temp = .1;
    int mcts_iters = 500;
    float cpuct = 5;
    while(1){
        if (done){
            tree1 = FUNC10(tree1, -1);
            tree2 = FUNC10(tree2, -1);
            float score = FUNC14(board);
            if((score > 0) == (total%2==0)) ++p1;
            else ++p2;
            ++total;
            FUNC5(stderr, "Total: %d, Player 1: %f, Player 2: %f\n", total, (float)p1/total, (float)p2/total);
            FUNC15(1);
            /*
               int i = (score > 0)? 0 : 1;
               int j;
               for(; i < count; i += 2){
               for(j = 0; j < 93; ++j){
               printf("%c", boards[i][j]);
               }
               printf("\n");
               }
             */
            FUNC8(board, 0, 3*19*19*sizeof(float));
            FUNC4(board);
            player = 1;
            done = 0;
            count = 0;
            FUNC3(stdout);
            FUNC3(stderr);
        }
        //print_board(stderr, board, 1, 0);
        //sleep(1);

        if ((total%2==0) == (player==1)){
            //mcts_iters = 4500;   
            cpuct = 5;
        } else {
            //mcts_iters = 500;
            cpuct = 1;
        }
        network *use = ((total%2==0) == (player==1)) ? net : net2;
        mcts_tree *t = ((total%2==0) == (player==1)) ? tree1 : tree2;
        t = FUNC13(t, use, board, two, player, mcts_iters, cpuct, 0);
        move m = FUNC12(t, temp, player);
        if(((total%2==0) == (player==1))) tree1 = t;
        else tree2 = t;

        tree1 = FUNC10(tree1, m.row*19 + m.col);
        tree2 = FUNC10(tree2, m.row*19 + m.col);

        if(m.row == 19){
            done = 1;
            continue;
        }
        int row = m.row;
        int col = m.col;

        float *swap = two;
        two = one;
        one = swap;

        if(player < 0) FUNC4(board);
        boards[count][0] = row;
        boards[count][1] = col;
        FUNC0(boards[count] + 2, board);
        if(player < 0) FUNC4(board);
        ++count;

        FUNC9(board, player, row, col);
        FUNC2(19*19*3, board, 1, one, 1);

        player = -player;
    }
}