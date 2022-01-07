
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mkdir (char const*,int) ;

__attribute__((used)) static int Devices_MakeDirectory(const char *filename)
{
 return mkdir(filename

  , 0777

  ) == 0;
}
