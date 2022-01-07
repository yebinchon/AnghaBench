
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ ENOTEMPTY ;
 scalar_t__ errno ;
 scalar_t__ rmdir (char const*) ;

__attribute__((used)) static UBYTE Devices_RemoveDirectory(const char *filename)
{
 if (rmdir(filename) == 0)
  return 1;
 return (UBYTE) ((errno == ENOTEMPTY) ? 167 : 150);
}
