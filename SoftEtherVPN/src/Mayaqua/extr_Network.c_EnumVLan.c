
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** UnixEnumVLan (char*) ;
 char** Win32EnumVLan (char*) ;

char **EnumVLan(char *tag_name)
{
 char **ret = ((void*)0);



 ret = UnixEnumVLan(tag_name);

 return ret;
}
