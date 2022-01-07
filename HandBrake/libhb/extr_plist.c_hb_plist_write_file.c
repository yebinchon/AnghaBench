
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int hb_plist_write (int *,int *) ;

void
hb_plist_write_file(const char *filename, hb_value_t *gval)
{
    FILE *file;

    file = fopen(filename, "w");
    if (file == ((void*)0))
        return;

    hb_plist_write(file, gval);
    fclose(file);
}
