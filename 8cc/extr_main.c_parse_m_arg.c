
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void parse_m_arg(char *s) {
    if (strcmp(s, "64"))
        error("Only 64 is allowed for -m, but got %s", s);
}
