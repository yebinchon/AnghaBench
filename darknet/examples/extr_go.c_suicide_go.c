
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* calculate_liberties (float*) ;
 int free (int*) ;
 scalar_t__ makes_safe_go (float*,int*,int,int,int) ;

int suicide_go(float *b, int p, int r, int c)
{
    int *l = calculate_liberties(b);
    int safe = 0;
    safe = safe || makes_safe_go(b, l, p, r+1, c);
    safe = safe || makes_safe_go(b, l, p, r-1, c);
    safe = safe || makes_safe_go(b, l, p, r, c+1);
    safe = safe || makes_safe_go(b, l, p, r, c-1);
    free(l);
    return !safe;
}
