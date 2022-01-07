
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char gchar ;


 size_t fARCH_aarch64 ;
 size_t fARCH_arm ;
 size_t fARCH_i386 ;
 size_t fARCH_x86_64 ;

gchar* getArchName(bool* archs) {
    if (archs[fARCH_i386])
        return "i386";
    else if (archs[fARCH_x86_64])
        return "x86_64";
    else if (archs[fARCH_arm])
        return "armhf";
    else if (archs[fARCH_aarch64])
        return "aarch64";
    else
        return "all";
}
