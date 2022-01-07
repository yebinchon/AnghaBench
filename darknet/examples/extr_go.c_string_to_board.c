
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (float*,int ,int) ;

void string_to_board(char *s, float *board)
{
    int i, j;
    memset(board, 0, 2*19*19*sizeof(float));
    int count = 0;
    for(i = 0; i < 91; ++i){
        char c = s[i];
        for(j = 0; j < 4; ++j){
            int me = (c >> (2*j)) & 1;
            int you = (c >> (2*j + 1)) & 1;
            if (me) board[count] = 1;
            else if (you) board[count + 19*19] = 1;
            ++count;
            if(count >= 19*19) break;
        }
    }
}
