
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gssize ;
typedef scalar_t__ gchar ;
typedef int GhbValue ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 size_t fread (scalar_t__*,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 int * g_fopen (scalar_t__ const*,char*) ;
 int g_free (scalar_t__*) ;
 scalar_t__* g_malloc (size_t) ;
 int g_warning (char*,scalar_t__ const*) ;
 int * ghb_plist_parse (scalar_t__*,int ) ;

GhbValue*
ghb_plist_parse_file(const gchar *filename)
{
    gchar *buffer;
    size_t size;
    GhbValue *gval;
    FILE *fd;

    fd = g_fopen(filename, "r");
    if (fd == ((void*)0))
    {
        g_warning("Plist parse: failed to open %s", filename);
        return ((void*)0);
    }
    fseek(fd, 0, SEEK_END);
    size = ftell(fd);
    fseek(fd, 0, SEEK_SET);
    buffer = g_malloc(size+1);
    size = fread(buffer, 1, size, fd);
    buffer[size] = 0;
    gval = ghb_plist_parse(buffer, (gssize)size);
    g_free(buffer);
    fclose(fd);
    return gval;
}
