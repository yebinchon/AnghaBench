
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBPrint ;


 scalar_t__ NOT_EMPTY (char const*) ;
 int av_bprintf (int *,char*,char const*,char const*) ;

__attribute__((used)) static void cat_header(AVBPrint *bp, const char key[], const char value[])
{
    if (NOT_EMPTY(value))
        av_bprintf(bp, "%s: %s\r\n", key, value);
}
