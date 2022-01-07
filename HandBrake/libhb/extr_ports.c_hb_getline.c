
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int fgetc (int *) ;
 int free (char*) ;
 size_t getline (char**,size_t*,int *) ;
 char* malloc (int) ;
 char* realloc (char*,size_t) ;

size_t hb_getline(char ** lineptr, size_t * n, FILE * fp)
{
    return getline(lineptr, n, fp);

}
