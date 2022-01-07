
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef char gchar ;


 size_t fARCH_aarch64 ;
 size_t fARCH_arm ;
 size_t fARCH_i386 ;
 size_t fARCH_x86_64 ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 scalar_t__ verbose ;

void extract_arch_from_e_machine_field(int16_t e_machine, const gchar* sourcename, bool* archs) {
    if (e_machine == 3) {
        archs[fARCH_i386] = 1;
        if(verbose)
            fprintf(stderr, "%s used for determining architecture i386\n", sourcename);
    }

    if (e_machine == 62) {
        archs[fARCH_x86_64] = 1;
        if(verbose)
            fprintf(stderr, "%s used for determining architecture x86_64\n", sourcename);
    }

    if (e_machine == 40) {
        archs[fARCH_arm] = 1;
        if(verbose)
            fprintf(stderr, "%s used for determining architecture armhf\n", sourcename);
    }

    if (e_machine == 183) {
        archs[fARCH_aarch64] = 1;
        if(verbose)
            fprintf(stderr, "%s used for determining architecture aarch64\n", sourcename);
    }
}
