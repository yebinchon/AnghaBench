
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int warning_is_error ;

__attribute__((used)) static void parse_warnings_arg(char *s) {
    if (!strcmp(s, "error"))
        warning_is_error = 1;
    else if (strcmp(s, "all"))
        error("unknown -W option: %s", s);
}
