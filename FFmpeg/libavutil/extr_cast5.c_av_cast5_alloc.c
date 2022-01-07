
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVCAST5 {int dummy; } ;


 struct AVCAST5* av_mallocz (int) ;

struct AVCAST5 *av_cast5_alloc(void)
{
    return av_mallocz(sizeof(struct AVCAST5));
}
