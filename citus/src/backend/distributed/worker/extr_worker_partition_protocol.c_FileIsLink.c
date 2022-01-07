
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISLNK (int ) ;

__attribute__((used)) static bool
FileIsLink(char *filename, struct stat filestat)
{
 return S_ISLNK(filestat.st_mode);
}
