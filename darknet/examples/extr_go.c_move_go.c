
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* calculate_liberties (float*) ;
 int free (int*) ;
 int remove_connected (float*,int*,int,int,int) ;

void move_go(float *b, int p, int r, int c)
{
    int *l = calculate_liberties(b);
    if(p > 0) b[r*19 + c] = 1;
    else b[19*19 + r*19 + c] = 1;
    remove_connected(b, l, -p, r+1, c);
    remove_connected(b, l, -p, r-1, c);
    remove_connected(b, l, -p, r, c+1);
    remove_connected(b, l, -p, r, c-1);
    free(l);
}
