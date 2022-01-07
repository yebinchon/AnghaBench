
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf2 ;
typedef int buf ;


 int exit (int) ;
 int ff_make_absolute_url (char*,int,char const*,char const*) ;
 int printf (char*,char const*,...) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void test(const char *base, const char *rel)
{
    char buf[200], buf2[200];
    ff_make_absolute_url(buf, sizeof(buf), base, rel);
    printf("%s\n", buf);
    if (base) {

        snprintf(buf2, sizeof(buf2), "%s", base);
        ff_make_absolute_url(buf2, sizeof(buf2), buf2, rel);
        if (strcmp(buf, buf2)) {
            printf("In-place handling of %s + %s failed\n", base, rel);
            exit(1);
        }
    }
}
