
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVTWOFISH {int dummy; } ;


 struct AVTWOFISH* av_mallocz (int) ;

struct AVTWOFISH *av_twofish_alloc(void)
{
    return av_mallocz(sizeof(struct AVTWOFISH));
}
