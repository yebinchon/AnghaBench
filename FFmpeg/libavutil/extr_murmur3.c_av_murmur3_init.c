
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVMurMur3 ;


 int av_murmur3_init_seeded (int *,int) ;

void av_murmur3_init(AVMurMur3 *c)
{

    av_murmur3_init_seeded(c, 0x725acc55daddca55);
}
