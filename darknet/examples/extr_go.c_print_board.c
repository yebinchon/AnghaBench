
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;
 scalar_t__ inverted ;
 int nind ;
 scalar_t__ noi ;
 int occupied (float*,int) ;

void print_board(FILE *stream, float *board, int player, int *indexes)
{
    int i,j,n;
    fprintf(stream, "   ");
    for(i = 0; i < 19; ++i){
        fprintf(stream, "%c ", 'A' + i + 1*(i > 7 && noi));
    }
    fprintf(stream, "\n");
    for(j = 0; j < 19; ++j){
        fprintf(stream, "%2d", (inverted) ? 19-j : j+1);
        for(i = 0; i < 19; ++i){
            int index = j*19 + i;
            if(indexes){
                int found = 0;
                for(n = 0; n < nind; ++n){
                    if(index == indexes[n]){
                        found = 1;







                        fprintf(stream, " %d", n+1);
                    }
                }
                if(found) continue;
            }


            if (occupied(board, index) == player) fprintf(stream, " X");
            else if (occupied(board, index) ==-player) fprintf(stream, " O");
            else fprintf(stream, " .");
        }
        fprintf(stream, "\n");
    }
}
