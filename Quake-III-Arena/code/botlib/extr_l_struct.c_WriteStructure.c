
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int structdef_t ;
typedef int FILE ;


 int WriteStructWithIndent (int *,int *,char*,int ) ;

int WriteStructure(FILE *fp, structdef_t *def, char *structure)
{
 return WriteStructWithIndent(fp, def, structure, 0);
}
