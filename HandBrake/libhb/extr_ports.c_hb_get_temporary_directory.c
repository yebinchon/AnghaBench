
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetTempPath (int,char*) ;
 int MAX_PATH ;
 int free (char*) ;
 int * getcwd (char*,int) ;
 char* getenv (char*) ;
 scalar_t__ getpid () ;
 char* hb_strdup_printf (char*,char*,int) ;
 char* malloc (int) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;

char * hb_get_temporary_directory()
{
    char * path, * base, * p;
    if( (p = getenv( "TMPDIR" ) ) != ((void*)0) ||
        (p = getenv( "TEMP" ) ) != ((void*)0) )
        base = strdup(p);
    else
        base = strdup("/tmp");


    if( base[strlen(base)-1] == '/' )
        base[strlen(base)-1] = '\0';

    path = hb_strdup_printf("%s/hb.%d", base, (int)getpid());
    free(base);

    return path;
}
