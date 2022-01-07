
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IREAD ;
 int S_IWRITE ;
 scalar_t__ chmod (char const*,int) ;

__attribute__((used)) static int Devices_SetReadOnly(const char *filename, int readonly)
{
 return chmod(filename, readonly ? S_IREAD : (S_IREAD | S_IWRITE)) == 0;
}
