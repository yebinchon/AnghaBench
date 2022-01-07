
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;
 int strlen (char const*) ;
 scalar_t__ utf8_validatestr (unsigned char const*,int) ;

int
xattr_validatename(const char *name)
{
 int namelen;

 if (name == ((void*)0) || name[0] == '\0') {
  return (EINVAL);
 }
 namelen = strlen(name);
 if (name[namelen] != '\0')
  return (ENAMETOOLONG);

 if (utf8_validatestr((const unsigned char *)name, namelen) != 0)
  return (EINVAL);

 return (0);
}
