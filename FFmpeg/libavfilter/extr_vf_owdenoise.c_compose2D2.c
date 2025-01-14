
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compose2D (float*,float*,float*,int,int,int,int,int) ;

__attribute__((used)) static void compose2D2(float *dst, float *src[4], float *temp[2],
                       int linesize, int step, int w, int h)
{
    compose2D(temp[0], src[0], src[1], linesize, 1, step, h, w);
    compose2D(temp[1], src[2], src[3], linesize, 1, step, h, w);
    compose2D(dst, temp[0], temp[1], 1, linesize, step, w, h);
}
