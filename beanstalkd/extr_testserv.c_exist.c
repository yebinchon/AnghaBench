
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int stat (char*,struct stat*) ;

__attribute__((used)) static int
exist(char *path)
{
    struct stat s;

    int r = stat(path, &s);
    return r != -1;
}
