
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fwrite (char const*,size_t,int,int *) ;

bool write_file(const char *path, const char *buf, size_t len) {
    FILE *file = fopen(path, "w");
    if (!file) {
        return 0;
    }
    size_t n = fwrite(buf, len, 1, file);
    fclose(file);
    return n == 1;
}
