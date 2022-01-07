
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_IFDIR ;
 scalar_t__ stat (char const*,struct stat*) ;

int Util_direxists(const char *filename)
{
 struct stat filestatus;
 return stat(filename, &filestatus) == 0 && (filestatus.st_mode & S_IFDIR);
}
