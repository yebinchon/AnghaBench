
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char** calloc (size_t,int) ;
 int fclose (int *) ;
 char* fgetl (int *) ;
 int * fopen (char*,char*) ;
 char** realloc (char**,size_t) ;
 scalar_t__ strcmp (char*,char*) ;

char **read_tokens(char *filename, size_t *read)
{
    size_t size = 512;
    size_t count = 0;
    FILE *fp = fopen(filename, "r");
    char **d = calloc(size, sizeof(char *));
    char *line;
    while((line=fgetl(fp)) != 0){
        ++count;
        if(count > size){
            size = size*2;
            d = realloc(d, size*sizeof(char *));
        }
        if(0==strcmp(line, "<NEWLINE>")) line = "\n";
        d[count-1] = line;
    }
    fclose(fp);
    d = realloc(d, count*sizeof(char *));
    *read = count;
    return d;
}
