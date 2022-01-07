
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dumpast ;
 int dumpsource ;
 int dumpstack ;
 int strcmp (char*,char*) ;
 int usage (int) ;

__attribute__((used)) static void parse_f_arg(char *s) {
    if (!strcmp(s, "dump-ast"))
        dumpast = 1;
    else if (!strcmp(s, "dump-stack"))
        dumpstack = 1;
    else if (!strcmp(s, "no-dump-source"))
        dumpsource = 0;
    else
        usage(1);
}
