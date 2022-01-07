
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int buf ;
typedef int FILE ;


 int HWCAP_EDSP ;
 int HWCAP_NEON ;
 int HWCAP_THUMBEE ;
 int HWCAP_TLS ;
 int HWCAP_VFP ;
 int HWCAP_VFPv3 ;
 scalar_t__ av_strstart (char*,char*,int *) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static int get_cpuinfo(uint32_t *hwcap)
{
    FILE *f = fopen("/proc/cpuinfo", "r");
    char buf[200];

    if (!f)
        return -1;

    *hwcap = 0;
    while (fgets(buf, sizeof(buf), f)) {
        if (av_strstart(buf, "Features", ((void*)0))) {
            if (strstr(buf, " edsp "))
                *hwcap |= HWCAP_EDSP;
            if (strstr(buf, " tls "))
                *hwcap |= HWCAP_TLS;
            if (strstr(buf, " thumbee "))
                *hwcap |= HWCAP_THUMBEE;
            if (strstr(buf, " vfp "))
                *hwcap |= HWCAP_VFP;
            if (strstr(buf, " vfpv3 "))
                *hwcap |= HWCAP_VFPv3;
            if (strstr(buf, " neon ") || strstr(buf, " asimd "))
                *hwcap |= HWCAP_NEON;
            if (strstr(buf, " fp "))
                *hwcap |= HWCAP_VFP | HWCAP_VFPv3;
            break;
        }
    }
    fclose(f);
    return 0;
}
