
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int sscanf (char const*,char*,int*,int*,int*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static int read_ts(const char *s, int64_t *start, int *duration)
{
    int64_t end;
    int hh1, mm1, ss1, ms1;
    int hh2, mm2, ss2, ms2;

    if (sscanf(s, "%u:%u:%u.%u,%u:%u:%u.%u",
               &hh1, &mm1, &ss1, &ms1, &hh2, &mm2, &ss2, &ms2) == 8) {
        end = (hh2*3600LL + mm2*60LL + ss2) * 100LL + ms2;
        *start = (hh1*3600LL + mm1*60LL + ss1) * 100LL + ms1;
        *duration = end - *start;
        return 0;
    }
    return -1;
}
