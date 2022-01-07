
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertf (int,char*,char*) ;
 char* fmtalloc (char*,char*,int) ;
 int free (char*) ;
 scalar_t__ strcmp (char*,char*) ;

void
cttest_allocf()
{
    char *got;

    got = fmtalloc("hello, %s %d", "world", 5);
    assertf(strcmp("hello, world 5", got) == 0, "got \"%s\"", got);
    free(got);
}
