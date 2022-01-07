
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rename (char const*,char const*) ;

__attribute__((used)) static int Devices_Rename(const char *oldname, const char *newname)
{
 return rename(oldname, newname) == 0;
}
