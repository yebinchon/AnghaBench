
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int AV_NOPTS_VALUE ;
 int sscanf (char const*,char*,int*,int*,int*,...) ;

__attribute__((used)) static int64_t read_ts(const char *s)
{
    int hh, mm, ss, ms;
    if (sscanf(s, "%u:%u:%u.%u", &hh, &mm, &ss, &ms) == 4) return (hh*3600LL + mm*60LL + ss) * 1000LL + ms;
    if (sscanf(s, "%u:%u.%u", &mm, &ss, &ms) == 3) return ( mm*60LL + ss) * 1000LL + ms;
    return AV_NOPTS_VALUE;
}
