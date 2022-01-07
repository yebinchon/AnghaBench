
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int network ;
struct TYPE_3__ {int row; int col; } ;
typedef TYPE_1__ move ;
typedef int mcts_tree ;


 int board_to_string (char*,float*) ;
 void* calloc (int,int) ;
 int copy_cpu (int,float*,int,float*,int) ;
 int fflush (int ) ;
 int flip_board (float*) ;
 int fprintf (int ,char*,int,float,float) ;
 int * load_network (char*,char*,int ) ;
 int load_weights (int *,char*) ;
 int memset (float*,int ,int) ;
 int move_go (float*,int,int,int) ;
 int * move_mcts (int *,int) ;
 int * parse_network_cfg (char*) ;
 TYPE_1__ pick_move (int *,float,int) ;
 int * run_mcts (int *,int *,float*,float*,int,int,float,int ) ;
 float score_game (float*) ;
 int sleep (int) ;
 int srand (int ) ;
 int stderr ;
 int stdout ;
 int time (int ) ;

void self_go(char *filename, char *weightfile, char *f2, char *w2, int multi)
{
    mcts_tree *tree1 = 0;
    mcts_tree *tree2 = 0;
    network *net = load_network(filename, weightfile, 0);


    network *net2;
    if (f2) {
        net2 = parse_network_cfg(f2);
        if(w2){
            load_weights(net2, w2);
        }
    } else {
        net2 = calloc(1, sizeof(network));
        *net2 = *net;
    }
    srand(time(0));
    char boards[600][93];
    int count = 0;


    float *board = calloc(19*19*3, sizeof(float));
    flip_board(board);
    float *one = calloc(19*19*3, sizeof(float));
    float *two = calloc(19*19*3, sizeof(float));
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
            tree1 = move_mcts(tree1, -1);
            tree2 = move_mcts(tree2, -1);
            float score = score_game(board);
            if((score > 0) == (total%2==0)) ++p1;
            else ++p2;
            ++total;
            fprintf(stderr, "Total: %d, Player 1: %f, Player 2: %f\n", total, (float)p1/total, (float)p2/total);
            sleep(1);
            memset(board, 0, 3*19*19*sizeof(float));
            flip_board(board);
            player = 1;
            done = 0;
            count = 0;
            fflush(stdout);
            fflush(stderr);
        }



        if ((total%2==0) == (player==1)){

            cpuct = 5;
        } else {

            cpuct = 1;
        }
        network *use = ((total%2==0) == (player==1)) ? net : net2;
        mcts_tree *t = ((total%2==0) == (player==1)) ? tree1 : tree2;
        t = run_mcts(t, use, board, two, player, mcts_iters, cpuct, 0);
        move m = pick_move(t, temp, player);
        if(((total%2==0) == (player==1))) tree1 = t;
        else tree2 = t;

        tree1 = move_mcts(tree1, m.row*19 + m.col);
        tree2 = move_mcts(tree2, m.row*19 + m.col);

        if(m.row == 19){
            done = 1;
            continue;
        }
        int row = m.row;
        int col = m.col;

        float *swap = two;
        two = one;
        one = swap;

        if(player < 0) flip_board(board);
        boards[count][0] = row;
        boards[count][1] = col;
        board_to_string(boards[count] + 2, board);
        if(player < 0) flip_board(board);
        ++count;

        move_go(board, player, row, col);
        copy_cpu(19*19*3, board, 1, one, 1);

        player = -player;
    }
}
