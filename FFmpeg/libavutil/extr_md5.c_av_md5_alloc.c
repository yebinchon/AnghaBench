
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVMD5 {int dummy; } ;


 struct AVMD5* av_mallocz (int) ;

struct AVMD5 *av_md5_alloc(void)
{
    return av_mallocz(sizeof(struct AVMD5));
}
