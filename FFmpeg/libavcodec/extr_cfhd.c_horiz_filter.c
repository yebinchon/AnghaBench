
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int filter (int *,int,int *,int,int *,int,int,int ) ;

__attribute__((used)) static void horiz_filter(int16_t *output, int16_t *low, int16_t *high,
                         int width)
{
    filter(output, 1, low, 1, high, 1, width, 0);
}
