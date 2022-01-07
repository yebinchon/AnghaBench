
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 scalar_t__ errno ;
 int mkdir (char const*,int) ;

__attribute__((used)) static bool Mkdir(const char* path)
{
   int result = mkdir(path, 0755);
   if (result == 0)
      return 1;
   if (errno == EEXIST)
      return 1;
   return 0;
}
