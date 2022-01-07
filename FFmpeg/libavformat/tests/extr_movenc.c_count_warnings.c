
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int AV_LOG_WARNING ;
 int num_warnings ;

__attribute__((used)) static void count_warnings(void *avcl, int level, const char *fmt, va_list vl)
{
    if (level == AV_LOG_WARNING)
        num_warnings++;
}
