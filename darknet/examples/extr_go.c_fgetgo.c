
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ feof (int *) ;
 size_t fread (char*,int,size_t,int *) ;
 int free (char*) ;
 char* malloc (size_t) ;

char *fgetgo(FILE *fp)
{
    if(feof(fp)) return 0;
    size_t size = 96;
    char *line = malloc(size*sizeof(char));
    if(size != fread(line, sizeof(char), size, fp)){
        free(line);
        return 0;
    }

    return line;
}
