
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wrap ;
typedef int uint8_t ;
struct SwrContext {int dummy; } ;


 int testneonclobbers (int (*) (struct SwrContext*,int **,int,int const**,int),struct SwrContext*,int **,int,int const**,int) ;

wrap(swr_convert(struct SwrContext *s, uint8_t **out, int out_count,
                 const uint8_t **in , int in_count))
{
    testneonclobbers(swr_convert, s, out, out_count, in, in_count);
}
