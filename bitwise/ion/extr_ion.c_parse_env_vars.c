
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_arch (char const*) ;
 int get_os (char const*) ;
 char* getenv (char*) ;
 int printf (char*,char const*) ;
 int target_arch ;
 int target_os ;

void parse_env_vars(void) {
    const char *ionos_var = getenv("IONOS");
    if (ionos_var) {
        int os = get_os(ionos_var);
        if (os == -1) {
            printf("Unknown target operating system in IONOS environment variable: %s\n", ionos_var);
        } else {
            target_os = os;
        }
    }
    const char *ionarch_var = getenv("IONARCH");
    if (ionarch_var) {
        int arch = get_arch(ionarch_var);
        if (arch == -1) {
            printf("Unknown target architecture in IONARCH environment variable: %s\n", ionarch_var);
        } else {
            target_arch = arch;
        }
    }
}
