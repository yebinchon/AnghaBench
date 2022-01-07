
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {double learning_rate; double momentum; double decay; } ;
typedef TYPE_1__ network ;
struct TYPE_8__ {int n; char** data; } ;
typedef TYPE_2__ moves ;


 char* basecfg (char*) ;
 float* calloc (int,int) ;
 TYPE_2__ load_go_moves (char*) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 int max_index (float*,int) ;
 int predict_move2 (TYPE_1__*,float*,float*,int) ;
 int printf (char*,...) ;
 int set_batch_network (TYPE_1__*,int) ;
 int srand (int ) ;
 int string_to_board (char*,float*) ;
 int time (int ) ;

void valid_go(char *cfgfile, char *weightfile, int multi, char *filename)
{
    srand(time(0));
    char *base = basecfg(cfgfile);
    printf("%s\n", base);
    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);
    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);

    float *board = calloc(19*19*3, sizeof(float));
    float *move = calloc(19*19+2, sizeof(float));

    moves m = load_go_moves(filename);

    int N = m.n;
    int i,j;
    int correct = 0;
    for (i = 0; i <N; ++i) {
        char *b = m.data[i];
        int player = b[0] - '0';

        int row = b[2];
        int col = b[3];
        int truth = col + 19*row;
        string_to_board(b+4, board);
        if(player > 0) for(j = 0; j < 19*19; ++j) board[19*19*2 + j] = 1;
        predict_move2(net, board, move, multi);
        int index = max_index(move, 19*19+1);
        if(index == truth) ++correct;
        printf("%d Accuracy %f\n", i, (float) correct/(i+1));
    }
}
