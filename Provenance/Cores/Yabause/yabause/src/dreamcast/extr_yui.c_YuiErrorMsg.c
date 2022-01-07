
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_exit () ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

void YuiErrorMsg(const char *error_text) {
    fprintf(stderr, "Error: %s\n", error_text);
    arch_exit();
}
