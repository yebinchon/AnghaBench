
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float int16_t ;


 int BLOCKSIZE ;
 int BUFFERSIZE ;
 int FFMIN (int,int) ;

__attribute__((used)) static void create_adapt_vect(float *vect, const int16_t *cb, int lag)
{
    int i;

    cb += BUFFERSIZE - lag;
    for (i = 0; i < FFMIN(BLOCKSIZE, lag); i++)
        vect[i] = cb[i];
    if (lag < BLOCKSIZE)
        for (i = 0; i < BLOCKSIZE - lag; i++)
            vect[lag + i] = cb[i];
}
