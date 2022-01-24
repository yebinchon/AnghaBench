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

/* Variables and functions */
 float* FUNC0 (int,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ inverted ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (float*,int,int,int) ; 
 int nind ; 
 scalar_t__ noi ; 
 float FUNC6 (int /*<<< orphan*/ *,float*,float*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,float*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (float*,int,int,int*) ; 

void FUNC15(char *cfg, char *weights, int multi)
{
    int i;
    network *net = FUNC4(cfg, weights, 0);
    FUNC9(net, 1);
    FUNC10(FUNC13(0));
    float *board = FUNC0(19*19*3, sizeof(float));
    FUNC2(board);
    float *move = FUNC0(19*19+1, sizeof(float));
    int color = 1;
    while(1){
        float result = FUNC6(net, board, move, multi);
        FUNC8("%.2f%% Win Chance\n", (result+1)/2*100);

        int indexes[nind];
        int row, col;
        FUNC14(move, 19*19+1, nind, indexes);
        FUNC7(stderr, board, color, indexes);
        for(i = 0; i < nind; ++i){
            int index = indexes[i];
            row = index / 19;
            col = index % 19;
            if(row == 19){
                FUNC8("%d: Pass, %.2f%%\n", i+1, move[index]*100);
            } else {
                FUNC8("%d: %c %d, %.2f%%\n", i+1, col + 'A' + 1*(col > 7 && noi), (inverted)?19 - row : row+1, move[index]*100);
            }
        }
        //if(color == 1) printf("\u25EF Enter move: ");
        //else printf("\u25C9 Enter move: ");
        if(color == 1) FUNC8("X Enter move: ");
        else FUNC8("O Enter move: ");

        char c;
        char *line = FUNC1(stdin);
        int picked = 1;
        int dnum = FUNC11(line, "%d", &picked);
        int cnum = FUNC11(line, "%c", &c);
        if (FUNC12(line) == 0 || dnum) {
            --picked;
            if (picked < nind){
                int index = indexes[picked];
                row = index / 19;
                col = index % 19;
                if(row < 19){
                    FUNC5(board, 1, row, col);
                }
            }
        } else if (cnum){
            if (c <= 'T' && c >= 'A'){
                int num = FUNC11(line, "%c %d", &c, &row);
                row = (inverted)?19 - row : row-1;
                col = c - 'A';
                if (col > 7 && noi) col -= 1;
                if (num == 2) FUNC5(board, 1, row, col);
            } else if (c == 'p') {
                // Pass
            } else if(c=='b' || c == 'w'){
                char g;
                int num = FUNC11(line, "%c %c %d", &g, &c, &row);
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
                int num = FUNC11(line, "%c %c %d", &g, &c, &row);
                row = (inverted)?19 - row : row-1;
                col = c - 'A';
                if (col > 7 && noi) col -= 1;
                if (num == 3) {
                    board[row*19 + col] = 0;
                    board[19*19 + row*19 + col] = 0;
                }
            }
        }
        FUNC3(line);
        FUNC2(board);
        color = -color;
    }
}