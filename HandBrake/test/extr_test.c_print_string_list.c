
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*,...) ;

__attribute__((used)) static void print_string_list(FILE *out, const char* const *list, const char *prefix)
{
    if (out != ((void*)0) && prefix != ((void*)0))
    {
        if (list != ((void*)0))
        {
            while (*list != ((void*)0))
            {
                fprintf(out, "%s%s\n", prefix, *list++);
            }
        }
        else
        {
            fprintf(out, "%s" "Option not supported by encoder\n", prefix);
        }
    }
}
