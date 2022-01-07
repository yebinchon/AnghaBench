
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,long,int,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 char* xmalloc (long) ;

char *read_file(const char *path) {
    FILE *file = fopen(path, "rb");
    if (!file) {
        return ((void*)0);
    }
    fseek(file, 0, SEEK_END);
    long len = ftell(file);
    fseek(file, 0, SEEK_SET);
    char *buf = xmalloc(len + 1);
    if (len && fread(buf, len, 1, file) != 1) {
        fclose(file);
        free(buf);
        return ((void*)0);
    }
    fclose(file);
    buf[len] = 0;
    return buf;
}
