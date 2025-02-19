
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* calloc (int,int) ;
 int memset (int*,int ,int) ;
 scalar_t__ occupied (float*,int) ;
 int propagate_liberty (float*,int*,int*,int,int,scalar_t__) ;

__attribute__((used)) static int *calculate_liberties(float *board)
{
    int *lib = calloc(19*19, sizeof(int));
    int visited[19*19];
    int i, j;
    for(j = 0; j < 19; ++j){
        for(i = 0; i < 19; ++i){
            memset(visited, 0, 19*19*sizeof(int));
            int index = j*19 + i;
            if(!occupied(board,index)){
                if ((i > 0) && occupied(board,index - 1)) propagate_liberty(board, lib, visited, j, i-1, occupied(board,index-1));
                if ((i < 18) && occupied(board,index + 1)) propagate_liberty(board, lib, visited, j, i+1, occupied(board,index+1));
                if ((j > 0) && occupied(board,index - 19)) propagate_liberty(board, lib, visited, j-1, i, occupied(board,index-19));
                if ((j < 18) && occupied(board,index + 19)) propagate_liberty(board, lib, visited, j+1, i, occupied(board,index+19));
            }
        }
    }
    return lib;
}
