
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list ;
typedef int FILE ;


 int fclose (int *) ;
 char* fgetl (int *) ;
 int file_error (char*) ;
 int * fopen (char*,char*) ;
 int list_insert (int *,char*) ;
 int * make_list () ;

list *get_paths(char *filename)
{
    char *path;
    FILE *file = fopen(filename, "r");
    if(!file) file_error(filename);
    list *lines = make_list();
    while((path=fgetl(file))){
        list_insert(lines, path);
    }
    fclose(file);
    return lines;
}
