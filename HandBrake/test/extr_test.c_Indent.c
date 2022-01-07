
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*) ;

__attribute__((used)) static void Indent(FILE *f, char *whitespace, int indent)
{
    int ii;
    for (ii = 0; ii < indent; ii++)
    {
        fprintf(f, "%s", whitespace);
    }
}
