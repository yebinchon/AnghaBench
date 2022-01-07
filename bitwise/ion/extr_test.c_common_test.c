
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int buf_test () ;
 int intern_test () ;
 int map_test () ;
 scalar_t__ strcmp (char*,char*) ;
 char* strf (char*,...) ;

void common_test(void) {
    buf_test();
    intern_test();
    map_test();

    char *str1 = strf("%d %d", 1, 2);
    assert(strcmp(str1, "1 2") == 0);
    char *str2 = strf("%s %s", str1, str1);
    assert(strcmp(str2, "1 2 1 2") == 0);
    char *str3 = strf("%s asdf %s", str2, str2);
    assert(strcmp(str3, "1 2 1 2 asdf 1 2 1 2") == 0);
}
