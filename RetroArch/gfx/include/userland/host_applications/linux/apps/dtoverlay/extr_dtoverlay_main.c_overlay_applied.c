
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int status ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,int,int *) ;
 int free_string (char const*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 char* sprintf_dup (char*,char const*) ;

__attribute__((used)) static int overlay_applied(const char *overlay_dir)
{
    char status[7] = { '\0' };
    const char *status_path = sprintf_dup("%s/status", overlay_dir);
    FILE *fp = fopen(status_path, "r");
    int bytes = 0;
    if (fp)
    {
 bytes = fread(status, 1, sizeof(status), fp);
 fclose(fp);
    }
    free_string(status_path);
    return (bytes == sizeof(status)) &&
 (memcmp(status, "applied", sizeof(status)) == 0);
}
