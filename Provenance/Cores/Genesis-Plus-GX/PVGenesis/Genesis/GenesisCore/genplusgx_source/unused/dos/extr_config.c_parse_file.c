
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,char*) ;
 char* malloc (int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int parse_file(char *filename, int *argc, char **argv)
{
    char token[0x100];
    FILE *handle = ((void*)0);

    *argc = 0;
    handle = fopen(filename, "r");
    if(!handle) return (0);

    fscanf(handle, "%s", &token[0]);
    while(!(feof(handle)))
    {
        int size = strlen(token) + 1;
        argv[*argc] = malloc(size);
        if(!argv[*argc]) return (0);
        strcpy(argv[*argc], token);
        *argc += 1;
        fscanf(handle, "%s", &token[0]);
    }

    if(handle) fclose(handle);
    return (1);
}
