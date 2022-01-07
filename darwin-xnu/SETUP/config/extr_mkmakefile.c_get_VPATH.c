
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 char* malloc (unsigned int) ;
 char* strcat (int ,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

const char *
get_VPATH(void)
{
    static char *vpath = ((void*)0);

    if ((vpath == ((void*)0)) &&
 ((vpath = getenv("VPATH")) != ((void*)0)) &&
 (*vpath != ':')) {
 char *buf = malloc((unsigned)(strlen(vpath) + 2));

 vpath = strcat(strcpy(buf, ":"), vpath);
    }

    return vpath ? vpath : "";
}
