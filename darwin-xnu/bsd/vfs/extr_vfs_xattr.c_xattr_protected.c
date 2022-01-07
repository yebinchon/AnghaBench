
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char const*,char*,int) ;

int
xattr_protected(const char *attrname)
{
 return(!strncmp(attrname, "com.apple.system.", 17));
}
