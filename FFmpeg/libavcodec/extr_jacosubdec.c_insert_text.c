
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBPrint ;


 int av_bprintf (int *,char*,char const*) ;

__attribute__((used)) static int insert_text(AVBPrint *dst, const char *in, const char *arg)
{
    av_bprintf(dst, "%s", arg);
    return 0;
}
