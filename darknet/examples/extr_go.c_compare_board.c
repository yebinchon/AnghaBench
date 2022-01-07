
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (float*,float*,int) ;

int compare_board(float *a, float *b)
{
    if(memcmp(a, b, 19*19*3*sizeof(float)) == 0) return 1;
    return 0;
}
