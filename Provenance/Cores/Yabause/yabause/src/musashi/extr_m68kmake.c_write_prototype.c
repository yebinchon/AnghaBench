
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*) ;

void write_prototype(FILE* filep, char* base_name)
{
 fprintf(filep, "void %s(void);\n", base_name);
}
