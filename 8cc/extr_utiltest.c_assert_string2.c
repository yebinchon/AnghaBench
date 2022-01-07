
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,int,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void assert_string2(int line, char *s, char *t) {
    if (strcmp(s, t))
        error("%d: Expected \"%s\" but got \"%s\"", line, s, t);
}
