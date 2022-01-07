
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void flip_board(float *board)
{
    int i;
    for(i = 0; i < 19*19; ++i){
        float swap = board[i];
        board[i] = board[i+19*19];
        board[i+19*19] = swap;
        board[i+19*19*2] = 1-board[i+19*19*2];
    }
}
