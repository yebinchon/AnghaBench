
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float* calloc (int,int) ;
 int copy_cpu (int,float*,int,float*,int) ;

float *copy_board(float *board)
{
    float *next = calloc(19*19*3, sizeof(float));
    copy_cpu(19*19*3, board, 1, next, 1);
    return next;
}
