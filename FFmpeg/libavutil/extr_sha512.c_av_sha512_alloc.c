
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVSHA512 {int dummy; } ;


 struct AVSHA512* av_mallocz (int) ;

struct AVSHA512 *av_sha512_alloc(void)
{
    return av_mallocz(sizeof(struct AVSHA512));
}
