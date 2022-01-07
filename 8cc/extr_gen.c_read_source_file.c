
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int FILE ;


 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;
 int fstat (int ,struct stat*) ;
 char* malloc (int) ;
 char** split (char*) ;

__attribute__((used)) static char **read_source_file(char *file) {
    FILE *fp = fopen(file, "r");
    if (!fp)
        return ((void*)0);
    struct stat st;
    fstat(fileno(fp), &st);
    char *buf = malloc(st.st_size + 1);
    if (fread(buf, 1, st.st_size, fp) != st.st_size) {
        fclose(fp);
        return ((void*)0);
    }
    fclose(fp);
    buf[st.st_size] = '\0';
    return split(buf);
}
