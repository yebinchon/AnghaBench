
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (char*,int,size_t,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 int * hb_plist_parse (char*,size_t) ;
 char* malloc (size_t) ;

hb_value_t*
hb_plist_parse_file(const char *filename)
{
    char *buffer;
    size_t size;
    hb_value_t *gval;
    FILE *fd;

    fd = fopen(filename, "r");
    if (fd == ((void*)0))
    {

        return ((void*)0);
    }
    fseek(fd, 0, SEEK_END);
    size = ftell(fd);
    fseek(fd, 0, SEEK_SET);
    buffer = malloc(size+1);
    size = fread(buffer, 1, size, fd);
    buffer[size] = 0;
    gval = hb_plist_parse(buffer, size);
    free(buffer);
    fclose(fd);
    return gval;
}
