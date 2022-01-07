
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network ;


 float* calloc (int,int) ;
 char* fgetl (int ) ;
 int flip_board (float*) ;
 int free (char*) ;
 scalar_t__ inverted ;
 int * load_network (char*,char*,int ) ;
 int move_go (float*,int,int,int) ;
 int nind ;
 scalar_t__ noi ;
 float predict_move2 (int *,float*,float*,int) ;
 int print_board (int ,float*,int,int*) ;
 int printf (char*,...) ;
 int set_batch_network (int *,int) ;
 int srand (int ) ;
 int sscanf (char*,char*,...) ;
 int stderr ;
 int stdin ;
 scalar_t__ strlen (char*) ;
 int time (int ) ;
 int top_k (float*,int,int,int*) ;

void test_go(char *cfg, char *weights, int multi)
{
    int i;
    network *net = load_network(cfg, weights, 0);
    set_batch_network(net, 1);
    srand(time(0));
    float *board = calloc(19*19*3, sizeof(float));
    flip_board(board);
    float *move = calloc(19*19+1, sizeof(float));
    int color = 1;
    while(1){
        float result = predict_move2(net, board, move, multi);
        printf("%.2f%% Win Chance\n", (result+1)/2*100);

        int indexes[nind];
        int row, col;
        top_k(move, 19*19+1, nind, indexes);
        print_board(stderr, board, color, indexes);
        for(i = 0; i < nind; ++i){
            int index = indexes[i];
            row = index / 19;
            col = index % 19;
            if(row == 19){
                printf("%d: Pass, %.2f%%\n", i+1, move[index]*100);
            } else {
                printf("%d: %c %d, %.2f%%\n", i+1, col + 'A' + 1*(col > 7 && noi), (inverted)?19 - row : row+1, move[index]*100);
            }
        }


        if(color == 1) printf("X Enter move: ");
        else printf("O Enter move: ");

        char c;
        char *line = fgetl(stdin);
        int picked = 1;
        int dnum = sscanf(line, "%d", &picked);
        int cnum = sscanf(line, "%c", &c);
        if (strlen(line) == 0 || dnum) {
            --picked;
            if (picked < nind){
                int index = indexes[picked];
                row = index / 19;
                col = index % 19;
                if(row < 19){
                    move_go(board, 1, row, col);
                }
            }
        } else if (cnum){
            if (c <= 'T' && c >= 'A'){
                int num = sscanf(line, "%c %d", &c, &row);
                row = (inverted)?19 - row : row-1;
                col = c - 'A';
                if (col > 7 && noi) col -= 1;
                if (num == 2) move_go(board, 1, row, col);
            } else if (c == 'p') {

            } else if(c=='b' || c == 'w'){
                char g;
                int num = sscanf(line, "%c %c %d", &g, &c, &row);
                row = (inverted)?19 - row : row-1;
                col = c - 'A';
                if (col > 7 && noi) col -= 1;
                if (num == 3) {
                    int mc = (g == 'b') ? 1 : -1;
                    if (mc == color) {
                        board[row*19 + col] = 1;
                    } else {
                        board[19*19 + row*19 + col] = 1;
                    }
                }
            } else if(c == 'c'){
                char g;
                int num = sscanf(line, "%c %c %d", &g, &c, &row);
                row = (inverted)?19 - row : row-1;
                col = c - 'A';
                if (col > 7 && noi) col -= 1;
                if (num == 3) {
                    board[row*19 + col] = 0;
                    board[19*19 + row*19 + col] = 0;
                }
            }
        }
        free(line);
        flip_board(board);
        color = -color;
    }
}
