
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;
typedef int FILE ;


 int fclose (int *) ;
 int * g_fopen (int const*,char*) ;
 int ghb_plist_write (int *,int *) ;

void
ghb_plist_write_file(const gchar *filename, GhbValue *gval)
{
    FILE *file;

    file = g_fopen(filename, "w");
    if (file == ((void*)0))
        return;

    ghb_plist_write(file, gval);
    fclose(file);
}
