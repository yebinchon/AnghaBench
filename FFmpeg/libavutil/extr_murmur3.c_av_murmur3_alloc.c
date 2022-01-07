
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVMurMur3 ;


 int * av_mallocz (int) ;

AVMurMur3 *av_murmur3_alloc(void)
{
    return av_mallocz(sizeof(AVMurMur3));
}
