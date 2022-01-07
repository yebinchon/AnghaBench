
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVCAMELLIA {int dummy; } ;


 struct AVCAMELLIA* av_mallocz (int) ;

struct AVCAMELLIA *av_camellia_alloc(void)
{
    return av_mallocz(sizeof(struct AVCAMELLIA));
}
