
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVRIPEMD {int dummy; } ;


 struct AVRIPEMD* av_mallocz (int) ;

struct AVRIPEMD *av_ripemd_alloc(void)
{
    return av_mallocz(sizeof(struct AVRIPEMD));
}
