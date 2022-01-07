
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;


 int strcmp (char*,char*) ;
 char* strrchr (char*,char) ;

int filter(const struct dirent *dir) {
    char *p = (char*) &dir->d_name;
    p = strrchr(p, '.');
    return p && !strcmp(p, ".desktop");
}
