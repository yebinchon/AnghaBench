
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVTEA {int dummy; } ;


 struct AVTEA* av_mallocz (int) ;

struct AVTEA *av_tea_alloc(void)
{
    return av_mallocz(sizeof(struct AVTEA));
}
