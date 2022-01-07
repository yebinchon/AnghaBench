
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static int usage(const char *argv0, int ret)
{
    fprintf(stderr, "%s [-split] [-ismf] [-n basename] [-path-prefix prefix] "
                    "[-ismc-prefix prefix] [-output dir] file1 [file2] ...\n", argv0);
    return ret;
}
