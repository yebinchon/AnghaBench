
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fgets (char*,int,int *) ;
 int fprintf (int ,char*,char const*) ;
 int pclose (int *) ;
 int * popen (char const*,char*) ;
 int stderr ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *read_from_shell_command(char *result, size_t sizeof_result, const char *command)
{
    FILE *fp;
    char *pnt;

    if ((fp = popen(command, "r")) == ((void*)0)) {
        return ((void*)0);
    }
    if (fgets(result, (int) sizeof_result, fp) == ((void*)0)) {
        pclose(fp);
        fprintf(stderr, "Command [%s] failed]\n", command);
        return ((void*)0);
    }
    if ((pnt = strrchr(result, '\n')) != ((void*)0)) {
        *pnt = 0;
    }
    (void) pclose(fp);

    return *result == 0 ? ((void*)0) : result;
}
