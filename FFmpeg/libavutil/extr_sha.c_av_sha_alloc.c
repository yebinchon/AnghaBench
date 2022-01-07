
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVSHA {int dummy; } ;


 struct AVSHA* av_mallocz (int) ;

struct AVSHA *av_sha_alloc(void)
{
    return av_mallocz(sizeof(struct AVSHA));
}
