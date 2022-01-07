
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;


 int av_clip (int,int,int) ;

__attribute__((used)) static int8_t store_weight(int weight)
{
    weight = av_clip(weight, -1024, 1024);
    if (weight > 0)
        weight -= (weight + 64) >> 7;

    return (weight + 4) >> 3;
}
